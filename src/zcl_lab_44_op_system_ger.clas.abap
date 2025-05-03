CLASS zcl_lab_44_op_system_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_ger.

    METHODS mouse_movements.

    DATA log TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_op_system_ger IMPLEMENTATION.
  METHOD mouse_movements.

    RAISE EVENT zif_lab_05_browser_ger~close_window.
    me->log = 'Event Raised'.

  ENDMETHOD.

ENDCLASS.
