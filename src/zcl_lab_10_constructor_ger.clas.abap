CLASS zcl_lab_10_constructor_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor.

    CLASS-METHODS class_constructor.

    CLASS-DATA log TYPE string.



  PROTECTED SECTION.



  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_ger IMPLEMENTATION.
  METHOD constructor.
    log = |{ log }-constructor instancia|.
  ENDMETHOD.

  METHOD class_constructor.
    log = |{ log }-constructor estatico|.
  ENDMETHOD.

ENDCLASS.
