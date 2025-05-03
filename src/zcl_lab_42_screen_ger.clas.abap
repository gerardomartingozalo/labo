    CLASS zcl_lab_42_screen_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

      PUBLIC SECTION.

        EVENTS: touch_screen
          EXPORTING
            VALUE(ev_pos_horizontal) TYPE i
            VALUE(ev_pos_vertical)   TYPE i.

        METHODS element_selected.


        DATA screen_type TYPE string.

        METHODS constructor IMPORTING iv_screen_type  TYPE string.


      PROTECTED SECTION.
      PRIVATE SECTION.
    ENDCLASS.



    CLASS zcl_lab_42_screen_ger IMPLEMENTATION.
      METHOD element_selected.

        RAISE EVENT touch_screen EXPORTING ev_pos_horizontal = 2
                                           ev_pos_vertical = 8.
      ENDMETHOD.

      METHOD constructor.
        me->screen_type = iv_screen_type.
      ENDMETHOD.

    ENDCLASS.
