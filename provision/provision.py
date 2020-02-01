#!/usr/bin/env python
# Provisioning Modbus devices with their initial settings
# (like GPIO modes, etc)

import minimalmodbus
import safeops;

# TTY attached to Modbus
MODBUS_TTY = '/dev/ttyS0'

# Modbus timeout in seconds
MODBUS_TIMEOUT = 0.05

# Modbus baudrate
MODBUS_BAUDRATE = 115200

# Enable minimalModbus debug?
MMODBUS_DBG = False

# Devices
endpoint_pp = minimalmodbus.Instrument(MODBUS_TTY, 11, mode='rtu', debug = MMODBUS_DBG)
endpoint_pp.serial.baudrate = MODBUS_BAUDRATE
endpoint_pp.serial.timeout = MODBUS_TIMEOUT
if not endpoint_pp.serial.is_open:
  endpoint_pp.serial.open()

remote_io = minimalmodbus.Instrument(MODBUS_TTY, 1, mode='rtu', debug = MMODBUS_DBG)
remote_io.serial.baudrate = MODBUS_BAUDRATE
remote_io.serial.timeout = MODBUS_TIMEOUT
if not remote_io.serial.is_open:
  remote_io.serial.open()

# Provision endpoint_pp
def provision_endpoint():

  # Base address for GPIO mode configuration & GPIO size
  ENDPOINTPP_GPIO_MODE_BASE = 0
  ENDPOINTPP_GPIO_SIZE = 16

  # Base address for GPIO write
  ENDPOINTPP_GPIO_WRITE_BASE = ENDPOINTPP_GPIO_MODE_BASE + ENDPOINTPP_GPIO_SIZE

  # Base address for GPIO pull configuration
  ENDPOINTPP_GPIO_PULL_BASE = ENDPOINTPP_GPIO_WRITE_BASE + ENDPOINTPP_GPIO_SIZE

  # Base address for GPIO read with "latch up" (I'm not sure what it is, pull-up maybe?)
  ENDPOINTPP_GPIO_READ_LUP_BASE = 0x100

  # Base address for GPIO write with "latch down" (still unsure about it's purpose)
  ENDPOINTPP_GPIO_READ_LDOWN_BASE = ENDPOINTPP_GPIO_READ_LUP_BASE + ENDPOINTPP_GPIO_SIZE

  # Relay addresses
  ENDPOINTPP_RELAY_BASE = ENDPOINTPP_GPIO_MODE_BASE + ENDPOINTPP_GPIO_WRITE_BASE + ENDPOINTPP_GPIO_PULL_BASE

  ###### BEGIN PINMAP ######

  # OUTPUT - Intercom "open" trigger
  DOOR_KEY = 0

  # OUTPUT - EL Wire power
  SIGN = 4
  
  # OUTPUT - Prescene alarm
  PRESCENE_ALARM = 6

  # OUTPUT - Red door lock
  RED_DOOR_LOCK = 7

  # INPUT - Open door button
  OPEN_DOOR_BUTTON = 8

  # INPUT - Prescene switch
  PRESCENE_SWITCH = 10

  # INPUT - Aquarium (outside) door magnetic switch
  AQUARIUM_DOOR = 13

  # INPUT - Red door magnetic switch
  RED_DOOR = 14

  # INPUT - Portal door magnetic switch
  PORTAL_DOOR = 15

  # RELAY - Aquarium lights
  RELAY_AQUARIUM_LIGHTS = ENDPOINTPP_RELAY_BASE + 0

  # RELAY - Portal lights
  RELAY_PORTAL_LIGHTS = ENDPOINTPP_RELAY_BASE + 1

  # RELAY - Hub sockets via contactor
  RELAY_SOCKETS = ENDPOINTPP_RELAY_BASE + 2

  ###### END PINMAP ######

  # Configure all pins to output by default
  pin_modes = [1] * ENDPOINTPP_GPIO_SIZE

  # Apply specific configuration
  pin_modes[DOOR_KEY] = 1
  pin_modes[SIGN] = 1
  pin_modes[RED_DOOR_LOCK] = 1
  
  pin_modes[AQUARIUM_DOOR] = 0
  pin_modes[RED_DOOR] = 0
  pin_modes[PORTAL_DOOR] = 0
  pin_modes[PRESCENE_SWITCH] = 0
  pin_modes[OPEN_DOOR_BUTTON] = 0
  pin_modes[PRESCENE_ALARM] = 1

  pulls = [1] * ENDPOINTPP_GPIO_SIZE
  pulls[PRESCENE_SWITCH] = 0
  pulls[OPEN_DOOR_BUTTON] = 0

    # Configure all pins states to LOW by default
  
  pin_states = [0] * ENDPOINTPP_GPIO_SIZE

  # Provision GPIO mode configuration
  safeops.writes(endpoint_pp, ENDPOINTPP_GPIO_MODE_BASE, pin_modes)
  print('EndpointPP: GPIO mode provisioned successfully')
  print('EndpointPP: GPIO mode ')

  # Provision GPIO pull configuration
  safeops.writes(endpoint_pp, ENDPOINTPP_GPIO_PULL_BASE, pulls)

  
  print(ENDPOINTPP_GPIO_PULL_BASE)

  # Provision GPIO output states configuration
  safeops.writes(endpoint_pp, ENDPOINTPP_GPIO_WRITE_BASE, pin_states)
  print('EndpointPP: GPIO states provisioned successfully')

  # Provision relays (OFF everything by default)
  safeops.writes(endpoint_pp, ENDPOINTPP_RELAY_BASE, [0] * 3)
  print('EndpointPP: Relay states provisioned successfully')

# Provision RemoteIO board
def provision_remoteio():

  # Base address for GPIO mode & GPIO size configuration
  REMOTEIO_GPIO_MODE_BASE = 0
  REMOTEIO_GPIO_SIZE = 8

  # Base address for GPIO write
  REMOTEIO_GPIO_WRITE_BASE = REMOTEIO_GPIO_MODE_BASE + REMOTEIO_GPIO_SIZE

  ###### BEGIN PINMAP ######

  # OUTPUT - Blue indicator
  INDICATOR_BLUE = 0

  # OUTPUT - White indicator
  INDICATOR_WHITE = 1

  # OUTPUT - Red indicator
  INDICATOR_RED = 2

  # OUTPUT - Green indicator
  INDICATOR_GREEN = 3

  # OUTPUT - Yellow indicator
  INDICATOR_YELLOW = 4

  # INPUT - Button
  BUTTON = 5

  # OUTPUT - Siren
  INDICATOR_SIREN = 7

  ###### END PINMAP ######

  # Configure all pins to input by default
  pin_modes = [1] * REMOTEIO_GPIO_SIZE
  pin_modes[BUTTON] = 0

  # Provision GPIO mode configuration
  safeops.writes(remote_io, REMOTEIO_GPIO_MODE_BASE, pin_modes)
  print('RemoteIO: GPIO mode provisioned successfully')

  # Provision GPIO state configuration
  safeops.write(remote_io, REMOTEIO_GPIO_WRITE_BASE + INDICATOR_BLUE, 1)
  print('RemoteIO: GPIO output states provisioned successfully')
  

provision_endpoint()

# It doesn't work (idk why, software issue probably)
# provision_remoteio()
