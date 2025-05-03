CLASS zcl_lab_15_flight_price_ger DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA mt_flights TYPE TABLE OF /dmo/flight.

    METHODS add_price IMPORTING iv_price TYPE /dmo/flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_ger IMPLEMENTATION.
  METHOD add_price.
    APPEND iv_price TO mt_flights.
  ENDMETHOD.

ENDCLASS.
