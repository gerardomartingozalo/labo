CLASS zcl_lab_25_collaborator_ger DEFINITION INHERITING FROM ZCL_LAB_24_PARTNER_GER
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS GET_CAPITAL RETURNING VALUE(rv_capital) type string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_ger IMPLEMENTATION.
  METHOD get_capital.

    data(lo_company) = new zcl_lab_23_company_ger(  ).
      rv_CAPITAL = lo_company->capital.

  ENDMETHOD.

ENDCLASS.
