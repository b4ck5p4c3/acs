const log = require('debug')('devices:kindarouter');
const logControl = require('debug')('devices:control');
const logAcquisition = require('debug')('devices:acquisition');
const devices = require('./enumerator');
const mqtt = require('../mqtt');

/**
 * Pair of encoder / decoder, target topic and data type
 * @typedef  {Object}   CapabilityTarget
 * @property {Function} translator Translator for output data
 * @property {String}   topic Target topic
 * @property {Function} type Type primitive
 */

/**
 * Encoder & handler for devices control
 * @type {Map<TranslatorTargetPair>}
 */
const devicesControlTopics = new Map();

/**
 * Encoder & handler for devices data fetch
 * @type {Map<TranslatorTargetPair>}
 */
const devicesDataTopics = new Map();

// Handles incomming control packets
const controlPacketHandler = (topic, data) => {

  const target = devicesControlTopics.get(topic);
  if (!target)
    return;

  const controlValue = target.translator(data);
  if (!controlValue) {

    log('value from %s is invalid', topic);
    return;

  }

  logControl('%s -> %s (value: %s)', topic, target.topic, controlValue);
  mqtt.publish(target.topic, controlValue);

};

// Handles incomming data packets
const dataPacketHandler = (topic, data) => {

  const target = devicesDataTopics.get(topic);
  if (!target)
    return;

  const dataValue = target.translator(data);
  if (!dataValue) {

    logAcquisition('value from %s is invalid', topic);
    return;

  }

  logAcquisition('%s -> %s (value: %s)', topic, target.topic, dataValue);
  mqtt.publish(target.topic, dataValue);

};

devices.forEach(device => {

  const topicPrefix = `bus/devices/${device.id}/`;
  device.capabilities.forEach(capability => {

    // Control channel
    if (capability.set) {

      if (typeof capability.set.topic !== 'string' || capability.set.topic.length === 0)
        throw new TypeError(`Incorrect control topic for capability ${device.id}#${capability.id}`);

      if (typeof capability.set.encoder !== 'function')
        throw new TypeError(`Incorrect encoder function for capability ${device.id}#${capability.id}`);

      devicesControlTopics.set(`${topicPrefix}${capability.id}/set`, { translator: capability.set.encoder, topic: capability.set.topic });
      mqtt.subscribe(`${topicPrefix}${capability.id}/set`, controlPacketHandler);

    }

    // Data acquisition channel
    if (capability.read) {

      if (typeof capability.read.topic !== 'string' || capability.read.topic.length === 0)
        throw new TypeError(`Incorrect read topic for capability ${device.id}#${capability.id}`);

      if (typeof capability.read.decoder !== 'function')
        throw new TypeError(`Incorrect decoder function for capability ${device.id}#${capability.id}`);

      devicesDataTopics.set(capability.read.topic, { translator: capability.read.decoder, topic: `${topicPrefix}${capability.id}/value` });
      mqtt.subscribe(capability.read.topic, dataPacketHandler);

    }

    log('registered capability %s#%s (%sset, %sread)', device.id, capability.id, (capability.set ? '+' : '-'), (capability.read ? '+' : '-'));

  });

});
