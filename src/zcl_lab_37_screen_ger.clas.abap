CLASS zcl_lab_37_screen_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_screen_TYPE IMPORTING iv_screen_TYPE TYPE string.
    METHODS get_screen_TYPE RETURNING VALUE(rv_screen_TYPE) TYPE string.



  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA screen_type TYPE string.




ENDCLASS.



CLASS zcl_lab_37_screen_ger IMPLEMENTATION.
  METHOD get_screen_type.
    rv_screen_TYPE = screen_type.
  ENDMETHOD.

  METHOD set_screen_type.
    screen_type = iv_screen_TYPE.
  ENDMETHOD.

ENDCLASS.
