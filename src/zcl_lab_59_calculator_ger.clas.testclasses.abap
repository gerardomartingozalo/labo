*"* use this source file for your ABAP unit test classes
CLASS ltcl_calculator DEFINITION FINAL FOR TESTING
DURATION SHORT
RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      sum_up_test FOR TESTING RAISING cx_static_check.
    METHODS setup.
    METHODS teardown.
    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_ger.

ENDCLASS.

CLASS ltcl_calculator IMPLEMENTATION.

  METHOD sum_up_test.

   "Given
    DATA(lv_number_1) = 2.
    DATA(lv_number_2) = 3.

    "When
    mo_cut->sum_up( EXPORTING iv_num_1 = lv_number_1
                              iv_num_2 = lv_number_2
                    IMPORTING ev_result = DATA(lv_result) ).

    "Then
    IF cl_abap_unit_assert=>assert_equals(
    EXPORTING act = lv_result
              exp = 5 ).

      cl_abap_unit_assert=>fail( 'Sum Up process failed' ).

    ENDIF.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
