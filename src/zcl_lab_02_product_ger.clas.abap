CLASS zcl_lab_02_product_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_product IMPORTING iv_PRODUCT TYPE matnr.
    METHODS set_creationdate IMPORTING iv_CREATION_DATE TYPE zdate.

  PROTECTED SECTION.


  PRIVATE SECTION.
    DATA  product TYPE matnr.
    DATA creation_date TYPE zdate.


ENDCLASS.



CLASS zcl_lab_02_product_ger IMPLEMENTATION.
  METHOD set_creationdate.
    creation_date = iv_creation_date.
  ENDMETHOD.

  METHOD set_product.
    product = iv_PRODUCT.
  ENDMETHOD.

ENDCLASS.
