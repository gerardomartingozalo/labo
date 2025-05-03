INTERFACE zif_lab_01_flight_ger
  PUBLIC .

  INTERFACES zif_lab_03_airports.

  CLASS-DATA comp_id TYPE string.

  DATA conn_id TYPE string.

  METHODS set_CONN_ID IMPORTING iv_CONN_ID TYPE string.
  METHODS get_CONN_ID EXPORTING ev_CONN_ID TYPE string.

ENDINTERFACE.
