CLASS zcl_lab_09_account_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .



  PUBLIC SECTION.
    METHODS set IMPORTING iv_IBAN  TYPE string.
    METHODS get RETURNING VALUE(rv_IBAN) TYPE string.

  PROTECTED SECTION.


  PRIVATE SECTION.
    DATA iban TYPE string.

ENDCLASS.



CLASS zcl_lab_09_account_ger IMPLEMENTATION.
  METHOD get.
    rv_IBAN = me->iban.
  ENDMETHOD.

  METHOD set.
    me->iban = iv_IBAN.
  ENDMETHOD.

ENDCLASS.
