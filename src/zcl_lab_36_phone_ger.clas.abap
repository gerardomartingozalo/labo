CLASS zcl_lab_36_phone_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING ir_screen TYPE REF TO zcl_lab_37_screen_ger.

    METHODS get_screen RETURNING VALUE(ro_screen) TYPE REF TO zcl_lab_37_screen_ger.


  PROTECTED SECTION.


  PRIVATE SECTION.
    DATA mo_screen TYPE REF TO zcl_lab_37_screen_ger.

ENDCLASS.



CLASS zcl_lab_36_phone_ger IMPLEMENTATION.
  METHOD constructor.
    me->mo_screen = ir_screen.
  ENDMETHOD.

  METHOD get_screen.

    ro_screen = mo_screen.

  ENDMETHOD.

ENDCLASS.
