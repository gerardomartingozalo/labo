CLASS zcl_lab_05_flight_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_flight IMPORTING IV_carrier_id    TYPE /dmo/carrier_id
                                   IV_connection_id TYPE /dmo/connection_id
                         RETURNING VALUE(rv_flag)   TYPE abap_boolean.


  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_lab_05_flight_ger IMPLEMENTATION.

  METHOD check_flight.

    DATA ls_dmo_flight TYPE /dmo/flight.

    SELECT SINGLE *
    FROM /dmo/flight
    WHERE carrier_id = @IV_carrier_id AND
          connection_id =  @IV_connection_id
    INTO @ls_dmo_flight.
    IF sy-subrc = 0.
      rv_flag = abap_true.
    ELSE.
      rv_flag = abap_false.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
