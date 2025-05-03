CLASS zcl_lab_40_actual_budget_ger DEFINITION INHERITING FROM zcl_lab_39_budget_ger
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget_ger IMPLEMENTATION.
  METHOD get_budget.
    rv_budget = '10'.
  ENDMETHOD.

ENDCLASS.
