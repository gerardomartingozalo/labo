CLASS zcl_lab_34_student_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  DATA name  TYPE string.

    METHODS SET_name IMPORTING iv_name TYPE string.

    METHODS get_name EXPORTING ev_name TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_34_student_ger IMPLEMENTATION.
  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

  METHOD get_name.
    ev_name =  me->name.
  ENDMETHOD.



ENDCLASS.
