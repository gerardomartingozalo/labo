CLASS zcl_lab_14_grid_ger DEFINITION INHERITING FROM ZCL_LAB_13_VIEW_GER
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING IV_BOX TYPE string.

  PROTECTED SECTION.


  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_14_grid_ger IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_view_type = view_type ).

    me->box = IV_BOX.

  ENDMETHOD.

ENDCLASS.
