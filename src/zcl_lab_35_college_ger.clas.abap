CLASS zcl_lab_35_college_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA lo_student TYPE REF TO zcl_lab_34_student_ger.

    METHODS enroll_student IMPORTING ir_student TYPE REF TO zcl_lab_34_student_ger.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_ger IMPLEMENTATION.
  METHOD enroll_student.
    me->lo_student = ir_student.
  ENDMETHOD.

ENDCLASS.
