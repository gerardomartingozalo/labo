CLASS zcl_lab_43_navigation_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.

    METHODS: on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_ger IMPORTING ev_pos_horizontal
                                                                                       ev_pos_vertical
                                                                                       sender.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_ger IMPLEMENTATION.
  METHOD on_touch_screen.
    log = |Screen { sender->screen_type }Posiciones enviadas: Horizontal={ ev_pos_horizontal }, Vertical={ ev_pos_vertical }|.
  ENDMETHOD.

ENDCLASS.
