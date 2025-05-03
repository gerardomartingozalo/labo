CLASS zcl_lab_07_student_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA birth_date TYPE zdate READ-ONLY.
    METHODS set_birth_date IMPORTING iv_BIRTH_DATE TYPE zdate.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_07_student_ger IMPLEMENTATION.
  METHOD set_birth_date.
    birth_date = iv_BIRTH_DATE.
  ENDMETHOD.

ENDCLASS.
