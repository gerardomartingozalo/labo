CLASS zcl_lab_60_test_calc_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS..

  PUBLIC SECTION.
"! @testing zcl_lab_59_calculator_ger
    METHODS sum_up_test FOR TESTING.

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS setup.
    METHODS teardown.
    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_ger.

ENDCLASS.

CLASS zcl_lab_60_test_calc_ger IMPLEMENTATION.
  METHOD sum_up_test.

    "Given
    DATA(lv_number_1) = 2.
    DATA(lv_number_2) = 3.
    "When
    mo_cut->sum_up( EXPORTING iv_num_1 = lv_number_1
                              iv_num_2 = lv_number_2
                    IMPORTING ev_result = DATA(lv_result) ).
    "Then
    cl_abap_unit_assert=>assert_equals(
    EXPORTING
    act = lv_result
    exp = 5 ).

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
