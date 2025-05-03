CLASS zcl_lab_33_expatriate_empl_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_ger.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_33_expatriate_empl_ger IMPLEMENTATION.

  METHOD zif_lab_04_employee_ger~get_employees_count.
   rv_number_employee = 33.
  ENDMETHOD.

ENDCLASS.
