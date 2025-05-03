CLASS zcl_lab_17_super_discount_ger DEFINITION INHERITING FROM zcl_lab_15_flight_price_ger
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS add_price REDEFINITION.

  PROTECTED SECTION.



  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_ger IMPLEMENTATION.
  METHOD add_price.


      DATA: ls_flight TYPE /dmo/flight.

    ls_flight = iv_price.
    ls_flight-price = ls_flight-price * 8 / 10. " 10% de descuento

    APPEND ls_flight TO mt_flights.


  ENDMETHOD.

ENDCLASS.
