CLASS zcl_lab_59_calculator_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS sum_up IMPORTING iv_num_1  TYPE i
                             iv_num_2  TYPE i
                   EXPORTING ev_result TYPE i.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_59_calculator_ger IMPLEMENTATION.
  METHOD sum_up.
    ev_result = iv_num_1 + iv_num_2.
  ENDMETHOD.

ENDCLASS.
