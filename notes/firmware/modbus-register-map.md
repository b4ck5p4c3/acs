# Частичная карта регистров

## Endpoint++

```
coils:
  0 - 16: set pin type (state == 1 ? Output : Input)
  16 - 32: set pin
  32 - 48: set push/pull
  48, 49, 50: relay

input_state:
  256 - 272: read pin value
  272 - 288: read previous pin value

holding:
  512 - 522: read/write holding regs

input_register:
  768: read temperature
  770: read humidity
  772: read pressure
  774: read gas ?!
```
