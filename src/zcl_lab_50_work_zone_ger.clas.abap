CLASS zcl_lab_50_work_zone_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend_ger .

  PUBLIC SECTION.

    METHODS get_helper.

  PROTECTED SECTION.
  PRIVATE SECTION.

  data mo_helper TYPE REF TO LCL_HELPER.

    DATA work_zone TYPE ty_work_zone.
    METHODS set_work_zone IMPORTING iv_work_zone TYPE ty_work_zone.




ENDCLASS.



CLASS zcl_lab_50_work_zone_ger IMPLEMENTATION.
  METHOD set_work_zone.
    work_zone-launchpad =       iv_work_zone-launchpad.
    work_zone-dashboard =       iv_work_zone-dashboard.
    work_zone-spaces   =     iv_work_zone-spaces.
  ENDMETHOD.

  METHOD get_helper.

  ENDMETHOD.

ENDCLASS.
