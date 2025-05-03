CLASS zcl_lab_49_employee_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_admi_dep_ger IMPORTING ev_log.

    DATA log TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_employee_ger IMPLEMENTATION.
  METHOD on_payroll_paid.
    me->log = |Payroll paid for employee: { ev_log }|.
  ENDMETHOD.

ENDCLASS.
