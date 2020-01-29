const fs = require('fs');
const path = require('path');
const mqtt = require('mqtt');
const EventEmitter = require('events');
const log = require('debug')('mqtt:connector');

/**
 * Simple wrapper for MQTT client
 * @extends EventEmitter
 */
class MQTT extends EventEmitter {

  constructor() {

    super();

    const connectionOpts = {
      host: process.env.MQTT_HOST || 'localhost',
      port: Number.isNaN(Number(process.env.MQTT_PORT)) ? 1883 : Number(process.env.MQTT_PORT),
    };

    if (process.env.MQTT_CLIENT_ID)
      connectionOpts.clientId = process.env.MQTT_CLIENT_ID;

    if (process.env.MQTT_USERNAME)
      connectionOpts.username = process.env.MQTT_USERNAME;

    if (process.env.MQTT_PASSWORD)
      connectionOpts.password = process.env.MQTT_PASSWORD;

    if (process.env.MQTT_USE_TLS === 'yes') {

      connectionOpts.protocol = 'mqtts';
      connectionOpts.rejectUnauthorized = (process.env.MQTT_ALLOW_UNAUTHORIZED === 'yes');

      if (process.env.MQTT_CAFILE) {

        const cafilePath = path.resolve(__dirname, '..', process.env.MQTT_CAFILE);
        connectionOpts.ca = fs.readFileSync(cafilePath, 'utf-8');

      }

    }

    log(
      'connecting to %s://%s@%s:%s',
      connectionOpts.protocol || 'mqtt',
      connectionOpts.username,
      connectionOpts.host,
      connectionOpts.port,
    );

    this.client = mqtt.connect(connectionOpts);
    this.client.on('message', this.handleIncommingMessage.bind(this));
    this.client.on('connect', () => log('connection established'));
    this.client.on('reconnect', () => log('reconnecting...'));
    this.client.on('error', err => log('error occured: %O', err));

  }

  /**
   * Handles incomming message
   * @param {String} topic  Topic name
   * @param {Buffer} data   Incomming message data
   * @param {Object} packet MQTT data packet
   * @private
   */
  handleIncommingMessage(topic, data, packet) {

    // Emit event with payload represented as a string
    this.emit(`m:${topic}`, topic, data.toString(), packet);

  }

  /**
   * Subscribes to topic
   * @param {String}   topic   Topic name
   * @param {Function} handler Message handling function
   */
  subscribe(topic, handler) {

    if (typeof topic !== 'string')
      throw new TypeError(`Topic name must be a string, but ${typeof topic} is given`);

    if (typeof handler !== 'function')
      throw new TypeError(`Message handler must be a function, but ${typeof handler} is given`);

    this.on(`m:${topic}`, handler);
    this.client.subscribe(topic);

  }

  /**
   * Sends a message
   * @param {String} topic Topic
   * @param {String|Buffer} data Message payload
   * @param {Object} [opts] Publishing options
   * @param {Function} [cb] Callback in case of QoS
   */
  publish(topic, data, opts, cb) {

    if (typeof topic !== 'string' || topic.length === 0)
      throw new TypeError(`Invalid topic name: ${topic} (${typeof topic})`);

    if (typeof data !== 'string' && !Buffer.isBuffer(data))
      throw new TypeError(`Data argument expected to be a string or buffer, but ${typeof data} is given`);

    this.client.publish(topic, data, opts, cb);

  }

}

module.exports = new MQTT();
