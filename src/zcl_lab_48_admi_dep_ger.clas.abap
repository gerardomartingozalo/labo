CLASS zcl_lab_48_admi_dep_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA employee_id TYPE string.

    EVENTS payroll_paid EXPORTING VALUE(ev_log) TYPE string.

    METHODS notify_employee.

    METHODS constructor IMPORTING iv_employee_id TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_48_admi_dep_ger IMPLEMENTATION.
  METHOD constructor.
    me->employee_id = iv_employee_id.
  ENDMETHOD.

  METHOD notify_employee.
    RAISE EVENT payroll_paid EXPORTING ev_log = me->employee_id.
  ENDMETHOD.

ENDCLASS.
