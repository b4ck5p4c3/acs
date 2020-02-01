'use strict';
const fs = require('fs');
const path = require('path');
const mqtt = require('mqtt');
const client  = mqtt.connect('mqtt://modbus-gateway:dbQbESxQ5X8Nk93WUUPMT@192.168.0.200')

let paukBtnCounter = NaN;

client.subscribe('modbus/rfid/state/uid');
client.subscribe('bus/devices/pauk.btn/pressed/value');
client.subscribe('modbus/endpointpp/state/portal_red_button');

const tagToPerson = fs.readFileSync(path.resolve(__dirname, 'ids.txt'), 'utf8')
	.split('\n')
	.map(row => row.split(','))
	.reduce((acc, [id, name]) => {
		if (id && name) {
			acc.set(id.toLowerCase(), name);
		}
		return acc;
	}, new Map());

console.log(tagToPerson);

function openTheDoors() {
  client.publish('bus/devices/aquarium.door/lock/set', '1');
  client.publish('bus/devices/portal.reddoor/lock/set', '1');

  setTimeout(() => {

    client.publish('bus/devices/aquarium.door/lock/set', '0');
    console.log('Closing the door');

  }, 5000);
}

client.on('message', function (topic, message) {
  if (topic === 'bus/devices/pauk.btn/pressed/value') {
    const counter = parseInt(message, 10);

    if (paukBtnCounter < counter) {
      console.log("Opening by pauk button");
      openTheDoors();
      console.log("Opened by pauk button");
    }

    paukBtnCounter = counter;

    return;
  }

  if (topic === 'modbus/endpointpp/state/portal_red_button') {
    const pressed = message.toString('ascii') === 'True';
    if (pressed) {
      console.log("Opening by portal red button");
      openTheDoors();
      console.log("Opened by portal red button");
    }
    return;
  }

  console.log("topic: %s", topic);
  const id = message.toString().toLowerCase();
  const person = tagToPerson.get(id);

  if (person === undefined) {
    console.log('Unknown person, id = "%s"', id);
    return;
  }

  console.log(`Opening for ${person}, id = ${id}`);
  openTheDoors();
  console.log(`Opened for ${person}, id = ${id}`);
});
