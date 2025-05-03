CLASS zcl_lab_28_logistics_ger DEFINITION INHERITING FROM zcl_lab_27_factory_ger
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
      input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics_ger IMPLEMENTATION.
  METHOD input_products.
    rv_input = 'input_products'.
  ENDMETHOD.

  METHOD production_line.
    rv_production = 'production_line'.
  ENDMETHOD.

ENDCLASS.
