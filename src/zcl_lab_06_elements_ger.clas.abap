CLASS zcl_lab_06_elements_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS c1 TYPE string VALUE 'Constante 1'.
    CONSTANTS c2 TYPE string VALUE 'Constante 2'.
    CONSTANTS c3 TYPE string VALUE 'Constante 3'.
    CONSTANTS c4 TYPE string VALUE 'Constante 4'.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

    METHODS set_object.

  PROTECTED SECTION.

  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_06_elements_ger IMPLEMENTATION.
  METHOD set_object.
    ms_object-class = 'Ejemplo de clase'.
    ms_object-instance = 'Ejemplo de instancia'.
    ms_object-reference = 'Ejemplo de referencia'.
  ENDMETHOD.

ENDCLASS.
