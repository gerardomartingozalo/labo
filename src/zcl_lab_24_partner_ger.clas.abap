CLASS zcl_lab_24_partner_ger DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS GET_COMPANY_CAPITAL RETURNING VALUE(rv_CAPITAL) TYPE string.

  PROTECTED SECTION.


  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_24_partner_ger IMPLEMENTATION.
  METHOD get_company_capital.

  "al ser clase amiga puede acceder a un atributo privado desde fuera

  data(lo_company) = new zcl_lab_23_company_ger(  ).
      rv_CAPITAL = lo_company->capital.
  ENDMETHOD.

ENDCLASS.
