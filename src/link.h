#pragma once

typedef enum{
  ENC = 1,
  RES,
  SINCOS,
  STEPDIR,
  UPDOWN,
  PWM,
  FREQ,
  MITSU,
  YASKAWA,
  HYPER,
  SANYO,
  SSERIAL,
  ENDAT,
  BISS,
  SSI
} protocol_t;

void link_pid();
int update_cmd();
int update_fb();
