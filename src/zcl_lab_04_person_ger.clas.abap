CLASS zcl_lab_04_person_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA age TYPE i.

    METHODS set_age IMPORTING iv_age TYPE i.

    METHODS get_age RETURNING VALUE(rv_age) type i.



  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_04_person_ger IMPLEMENTATION.
  METHOD get_age.
    rv_age = age.
  ENDMETHOD.

  METHOD set_age.
    age = iv_age.
  ENDMETHOD.

ENDCLASS.
