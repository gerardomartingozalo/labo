CLASS zcl_lab_29_organization_ger DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_location RETURNING VALUE(rv_location) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_29_organization_ger IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Global Organization'.
  ENDMETHOD.

ENDCLASS.
