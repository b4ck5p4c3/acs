'use strict';
const fs = require('fs');
const path = require('path');
const mqtt = require('mqtt');
const client  = mqtt.connect('mqtt://modbus-gateway:dbQbESxQ5X8Nk93WUUPMT@192.168.0.200')

client.subscribe('modbus/rfid/state/uid');
client.subscribe('bus/devices/pauk.btn/pressed/value');

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
    console.log("Opening by button");
    openTheDoors();
    console.log("Opened by button");
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
