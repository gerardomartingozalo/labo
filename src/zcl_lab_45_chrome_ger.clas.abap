CLASS zcl_lab_45_chrome_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS on_close_window FOR EVENT close_window OF zif_lab_05_browser_ger.

    data log type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_chrome_ger IMPLEMENTATION.
  METHOD on_close_window.
    me->log = 'The window was closed'.
  ENDMETHOD.

ENDCLASS.
