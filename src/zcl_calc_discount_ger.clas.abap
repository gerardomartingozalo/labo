CLASS zcl_calc_discount_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .
    CLASS-METHODS get_discount FOR SCALAR FUNCTION zsf_calc_discount_ger.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_calc_discount_ger IMPLEMENTATION.
    METHOD get_discount BY DATABASE FUNCTION
                        FOR HDB
                        LANGUAGE SQLSCRIPT
                        OPTIONS READ-ONLY.

      declare discount decimal(16, 2);
      IF pClientCucky = 'EUR'
      THEN discount = pDiscount * 0.10;
      else
      discount = pDiscount * 0.05;
      end if;
      result = discount;

    endmethod.

ENDCLASS.
