CLASS zcl_lab_11_system_ger DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA architecture TYPE string VALUE '64BITS'.

    METHODS get_architecture EXPORTING ev_ARCHITECTURE TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_ger IMPLEMENTATION.
  METHOD get_architecture.
    ev_ARCHITECTURE = architecture.
  ENDMETHOD.

ENDCLASS.
