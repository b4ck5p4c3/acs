/*
 Unified mode:
  - send bus/device/aquarium.door/lock/set
  - subscribe bus/device/aquarium.door/lock/state
*/

module.exports = $ => [

  {
    id: 'aquarium.door',
    name: 'Aquarium door',
    capabilities: [
      {
        id: 'lock',
        type: Boolean,
        read: {
          topic: 'modbus/endpointpp/state/aquarium_door_lock',
          decoder: $.translators.PyBool2Num,
        },
        set: {
          topic: 'modbus/endpointpp/set/aquarium_door_lock',
          encoder: $.translators.Num2PyBool,
        },
      },
      {
        id: 'open',
        type: Boolean,
        read: {
          topic: 'modbus/endpointpp/state/aquarium_door_opened',
          decoder: $.translators.PyBool2Num,
        },
        set: null,
      },
    ],
  },

  {
    id: 'portal.reddoor',
    name: 'Red portal door',
    capabilities: [
      {
        id: 'open',
        type: 'Boolean',
        read: {
          topic: 'modbus/endpointpp/state/red_door_opened',
          decoder: $.translators.PyBool2Num,
        },
      },
      {
        id: 'lock',
        type: Boolean,
        read: {
          topic: 'modbus/endpointpp/state/red_door_lock',
          decoder: $.translators.PyBool2Num,
        },
        set: {
          topic: 'modbus/endpointpp/set/red_door_lock',
          encoder: $.translators.Num2PyBool,
        },
      },
    ],
  },

  {
    id: 'portal.internaldoor',
    name: 'Red portal door',
    capabilities: [
      {
        id: 'open',
        type: 'Boolean',
        read: {
          topic: 'modbus/endpointpp/state/portal_door_opened',
          decoder: $.translators.PyBool2Num,
        },
      },
    ],
  },

  {
    id: 'aquarium.light',
    name: 'Lights in aquarium',
    capabilities: [
      {
        id: 'on',
        type: 'Boolean',
        read: {
          topic: 'modbus/endpointpp/state/aquarium_light',
          decoder: $.translators.PyBool2Num,
        },
        set: {
          topic: 'modbus/endpointpp/set/aquarium_light',
          encoder: $.translators.Num2PyBool,
        },
      },
    ],
  },

  {
    id: 'portal.light',
    name: 'Lights in portal',
    capabilities: [
      {
        id: 'on',
        type: 'Boolean',
        read: {
          topic: 'modbus/endpointpp/state/portal_light',
          decoder: $.translators.PyBool2Num,
        },
        set: {
          topic: 'modbus/endpointpp/set/portal_light',
          encoder: $.translators.Num2PyBool,
        },
      },
    ],
  },

  {
    id: 'hub.sockets',
    name: 'Sockets contactor in Hub area',
    capabilities: [
      {
        id: 'on',
        type: 'Boolean',
        read: {
          topic: 'modbus/endpointpp/state/sockets',
          decoder: $.translators.PyBool2Num,
        },
        set: {
          topic: 'modbus/endpointpp/set/sockets',
          encoder: $.translators.Num2PyBool,
        },
      },
    ],
  },

  {
    id: 'outdoor.rfid',
    name: 'Entrance RFID reader',
    capabilities: [
      {
        id: 'uid',
        type: String,
        read: {
          topic: 'modbus/rfid/state/uid',
          decoder: $.translators.Bypass,
        },
      },
    ],
  },

  {
    id: 'pauk.btn',
    name: 'Pauk red button',
    capabilities: [
      {
        id: 'pressed',
        type: Number,
        read: {
          topic: 'modbus/pauk/state/btn',
          decoder: $.translators.Bypass,
	}
      }
    ]
  }

];
