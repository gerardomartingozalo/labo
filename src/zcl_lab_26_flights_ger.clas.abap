CLASS zcl_lab_26_flights_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_01_flight_ger.

    INTERFACES zif_lab_02_customer.

    ALIASES get_conn_id FOR zif_lab_01_flight_ger~get_conn_id.
    ALIASES set_conn_id FOR zif_lab_01_flight_ger~set_conn_id.
    ALIASES get_customer FOR zif_lab_02_customer~get_customer.
    ALIASES get_airports FOR zif_lab_03_airports~get_airports.

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_26_flights_ger IMPLEMENTATION.

  METHOD get_conn_id.
    ev_conn_id = me->zif_lab_01_flight_ger~conn_id.
  ENDMETHOD.

  METHOD set_conn_id.
    me->zif_lab_01_flight_ger~conn_id = iv_conn_id.
  ENDMETHOD.

  METHOD get_customer.

    SELECT SINGLE
    FROM /dmo/customer
    fields first_name, last_name
    WHERE customer_id = @iv_customer_id
    INTO @rv_customer.

  ENDMETHOD.

  METHOD get_airports.

    SELECT SINGLE *
    FROM /dmo/airport
    WHERE airport_id = @iv_airport
    INTO @rv_airport.


  ENDMETHOD.

ENDCLASS.
