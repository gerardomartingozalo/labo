CLASS zcl_lab_51_wz_friend_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS get_helper.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_51_wz_friend_ger IMPLEMENTATION.
  METHOD get_helper.

    DATA(lo_work_zone) = NEW zcl_lab_50_work_zone_ger( ).
    DATA(ls_work_zone) = lo_work_zone->mo_helper->get_work_zone( ).

  ENDMETHOD.

ENDCLASS.
