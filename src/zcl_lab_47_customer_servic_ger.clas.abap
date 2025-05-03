CLASS zcl_lab_47_customer_servic_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_operator_ger
      IMPORTING ev_phone_number.


    CLASS-DATA log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_servic_ger IMPLEMENTATION.
  METHOD on_new_call.
    log = |Client....{ ev_phone_number }|.
  ENDMETHOD.

ENDCLASS.
