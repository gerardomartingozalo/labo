CLASS zcl_lab_18_animal_ger DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS walk RETURNING VALUE(rv_cadena) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_18_animal_ger IMPLEMENTATION.
  METHOD walk.
    rv_cadena = 'The animal walks'.
  ENDMETHOD.

ENDCLASS.
