CLASS zcl_lab_32_internal_empl_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_ger.

  PROTECTED SECTION.


  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_32_internal_empl_ger IMPLEMENTATION.
  METHOD zif_lab_04_employee_ger~get_employees_count.
    rv_number_employee = 2.
  ENDMETHOD.

ENDCLASS.
