import time

# Modbus retries amount
MODBUS_RETRIES = 8

# Modbus safe and retry timeouts
MODBUS_TIMEOUT_SAFE = 0.05
MODBUS_TIMEOUT_RETRY = 0.05

# Safely writes a bit into a coil
def write(instrument, address, data):
  for i in xrange(MODBUS_RETRIES):
    try:
      if i > 1:
        print("[SafeOps] Retry coil write #", i)
      instrument.write_bit(address, data, functioncode = 0x05)
      time.sleep(MODBUS_TIMEOUT_SAFE)
      return
    except Exception:
      time.sleep(MODBUS_TIMEOUT_RETRY)

  print "[SafeOps] Coil write failed, provisioning failed, stopping now"
  raise SystemExit

# Safely writes a multiple coils
def writes(instrument, address, data):
  for i in xrange(MODBUS_RETRIES):
    try:
      if i > 1:
        print "[SafeOps] Retry multiple coils write"
      instrument.write_bits(address, data)
      time.sleep(MODBUS_TIMEOUT_SAFE)
      return
    except Exception:
      time.sleep(MODBUS_TIMEOUT_RETRY)

  print "[SafeOps] Multiple coils write failed, provisioning failed, stopping now"
  raise SystemExit

# Safely read a coils
def read(instrument, address, size):
  for i in xrange(MODBUS_RETRIES):
    try:
      if i > 1:
        print "[SafeOps] Retry coil(s) reading"
      time.sleep(MODBUS_TIMEOUT_SAFE)
      return instrument.read_bits(address, size)
    except Exception:
      time.sleep(MODBUS_TIMEOUT_RETRY)

  print "[SafeOps] Coil(s) read failed, stopping now"
  raise SystemExit

# Safely reads a registers
def read_registers(instrument, address, size):
  for i in xrange(MODBUS_RETRIES):
    try:
      if i > 1:
        print "[SafeOps] Retry regsiter(s) reading"
      time.sleep(MODBUS_TIMEOUT_SAFE)
      return instrument.read_registers(address, size, functioncode=0x4)
    except Exception:
      time.sleep(MODBUS_TIMEOUT_RETRY)

  print "[SafeOps] Register(s) read failed, stopping now"
  raise SystemExit
