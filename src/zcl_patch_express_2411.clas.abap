CLASS zcl_patch_express_2411 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_patch_express_2411 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_public_assoc_2411 AS Travel
    FIELDS Travel~agencyid,
           Travel~travelid,
           \_Agency-name
           WHERE Travel~agencyid EQ '070032'
           INTO TABLE @DATA(lt_results)
           UP TO 10 ROWS.

      out->write( lt_results ).


        ENDMETHOD.

ENDCLASS.
