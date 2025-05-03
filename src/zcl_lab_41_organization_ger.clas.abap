CLASS zcl_lab_41_organization_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA headquarters TYPE string.

    METHODS set_headquarters IMPORTING iv_HEADQUARTERS TYPE string.
    METHODS get_headquarters RETURNING VALUE(rv_HEADQUARTERS) TYPE string.
  PROTECTED SECTION.



  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_41_organization_ger IMPLEMENTATION.
  METHOD set_headquarters.
    me->headquarters = iv_HEADQUARTERS .
  ENDMETHOD.

  METHOD get_headquarters.
rv_HEADQUARTERS = me->headquarters.
  ENDMETHOD.

ENDCLASS.
