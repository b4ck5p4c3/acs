#!/usr/bin/env python
# Provisioning Modbus devices with their initial settings
# (like GPIO modes, etc)

import minimalmodbus
import safeops;

# TTY attached to Modbus
MODBUS_TTY = '/dev/ttyAMA0'

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

endpoint_pp_int = minimalmodbus.Instrument(MODBUS_TTY, 12, mode='rtu', debug = MMODBUS_DBG)
endpoint_pp_int.serial.baudrate = MODBUS_BAUDRATE
endpoint_pp_int.serial.timeout = MODBUS_TIMEOUT
if not endpoint_pp_int.serial.is_open:
  endpoint_pp_int.serial.open()

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

# Provision endpoint_pp
def provision_endpoint():
  ###### BEGIN PINMAP ######

  # OUTPUT - Magnet aquarium lock
  AQUARIUM_LOCK = 0

  # INPUT - Aquarium open button
  AQUARIUM_BUTTON = 1

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
  pin_modes[AQUARIUM_LOCK] = 1
  pin_modes[SIGN] = 1
  pin_modes[RED_DOOR_LOCK] = 1

  pin_modes[AQUARIUM_DOOR] = 0
  pin_modes[AQUARIUM_BUTTON] = 0
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

  # Provision GPIO output states configuration
  safeops.writes(endpoint_pp, ENDPOINTPP_GPIO_WRITE_BASE, pin_states)
  print('EndpointPP: GPIO states provisioned successfully')

  # Provision relays (OFF everything by default)
  safeops.writes(endpoint_pp, ENDPOINTPP_RELAY_BASE, [0] * 3)
  print('EndpointPP: Relay states provisioned successfully')


# Provision endpoint_pp
def provision_endpoint_int():
  ###### BEGIN PINMAP ######

  # OUTPUT - Magnet aquarium lock
  RED_TRAFFIC = 0
  YELLOW_TRAFFIC = 1
  GREEN_TRAFFIC = 2

  HACK_LIGHT = 5
  HACK_LIGHT_SWITCH = 4

  ###### END PINMAP ######

  # Configure all pins to output by default
  pin_modes = [1] * ENDPOINTPP_GPIO_SIZE

  # Apply specific configuration
  pin_modes[RED_TRAFFIC] = 1
  pin_modes[YELLOW_TRAFFIC] = 1
  pin_modes[GREEN_TRAFFIC] = 1

  pin_modes[HACK_LIGHT_SWITCH] = 0
  pin_modes[HACK_LIGHT] = 1

  pulls = [1] * ENDPOINTPP_GPIO_SIZE
  pulls[HACK_LIGHT_SWITCH] = 0

  # Configure all pins states to LOW by default
  pin_states = [0] * ENDPOINTPP_GPIO_SIZE

  # Provision GPIO mode configuration
  safeops.writes(endpoint_pp_int, ENDPOINTPP_GPIO_MODE_BASE, pin_modes)
  print('EndpointPP int: GPIO mode provisioned successfully')
  # print('EndpointPP: GPIO mode ')

  # Provision GPIO pull configuration
  safeops.writes(endpoint_pp_int, ENDPOINTPP_GPIO_PULL_BASE, pulls)

  # Provision GPIO output states configuration
  safeops.writes(endpoint_pp_int, ENDPOINTPP_GPIO_WRITE_BASE, pin_states)
  print('EndpointPP int: GPIO states provisioned successfully')

  # Provision relays (OFF everything by default)
  safeops.writes(endpoint_pp_int, ENDPOINTPP_RELAY_BASE, [0] * 3)
  print('EndpointPP int: Relay states provisioned successfully')

provision_endpoint()
provision_endpoint_int()
