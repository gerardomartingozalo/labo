CLASS zcl_lab_01_ejec_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_01_ejec_ger IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


*    DATA lv_string TYPE string.
*
*    lv_string = `Hello`.
*
*    lv_string = 'Hello'.

data result TYPE P LENGTH 3 DECIMALS 2.

result = 1 / 16.


*
*    DATA(lo_lab04) =  NEW zcl_lab_04_person_ger(   ).
*
*    lo_lab04->set_age( iv_age = 32 ).
*
*    out->write( lo_lab04->get_age(   ) ).
*
*
*    DATA(lo_lab05) = NEW zcl_lab_05_flight_ger(  ).
*
*    IF lo_lab05->check_flight( iv_carrier_id = 'SQ'
*                               iv_connection_id = '0001' ) .
*      out->write( 'verdadero' ).
*    ELSE.
*      out->write( 'falso' ).
*    ENDIF.
*
*
*    DATA(go_elem) = NEW zcl_lab_06_elements_ger(  ).
*
*    DATA gs_elem TYPE zcl_lab_06_elements_ger=>ty_elem_objects.
*
*    go_elem->set_object( ).
*    out->write( go_elem->ms_object ).
*
*    out->write( go_elem->c1 ).
*    out->write( go_elem->c2 ).
*    out->write( go_elem->c3 ).
*    out->write( go_elem->c4 ).
*
*    DATA(go_student) = NEW zcl_lab_07_student_ger(  ).
*
*    "go_student->birth_date = '20250201'.
*
*    zcl_lab_08_work_record_ger=>open_new_record( iv_date = '20250101'
*                                                 iv_first_name = 'Ger'
*                                                 iv_last_name = 'Martin' ).
*
*
*    DATA(go_account) = NEW zcl_lab_09_account_ger(  ).
*
*    go_account->set( iv_iban = '0123456' )    .
*
*    out->write( go_account->get(  ) ).


*    out->write( zcl_lab_10_constructor_ger=>log ).
*
*    DATA(lo_constructor1) = NEW zcl_lab_10_constructor_ger(  ).
*
*    out->write( zcl_lab_10_constructor_ger=>log ).

*    DATA(lo_linux) = NEW zcl_lab_12_linux_ger(  ).
*
*    lo_linux->get_architecture( IMPORTING ev_architecture = DATA(gv_ARCHITECTURE)  ).
*
*    out->write( gv_ARCHITECTURE ).


*    DATA(lo_grid) = NEW zcl_lab_14_grid_ger( iv_view_type = 'view'
*                                             iv_box = 'box' ).
*
*
*    DATA ls_flight TYPE /dmo/flight.
*
*    SELECT SINGLE *
*    FROM /dmo/flight
*    WHERE carrier_id = 'AA' AND
*          connection_id = '0017'
*              INTO @ls_flight.
*
*    DATA(go_price) = NEW zcl_lab_15_flight_price_ger( ).
*    DATA(go_price_discount) = NEW zcl_lab_16_price_discount_ger( ).
*    DATA(go_price_super_discount) = NEW zcl_lab_17_super_discount_ger( ).
*
*    go_price->add_price( iv_price = ls_flight ).
*    out->write( |Usual price: { go_price->mt_flights[ 1 ]-price }| ).
*
*    go_price_discount->add_price( iv_price = ls_flight ).
*    out->write( |Price dicount 10%: { go_price_discount->mt_flights[ 1 ]-price }| ).
*
*    go_price_super_discount->add_price( iv_price = ls_flight ).
*    out->write( |Price dicount 20%: { go_price_super_discount->mt_flights[ 1 ]-price }| ).


*    DATA(lo_animal) = NEW zcl_lab_18_animal_ger(  ).
*
*    DATA(lo_lion) = NEW zcl_lab_19_lion_ger(  ).
*
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
***    NARROWING CASTING O UP CASTING
***una referencia de la clase superior apuntamos a una referencia de la clase inferior
*    lo_animal = lo_lion.
****
*    out->write( 'NARROWING CASTING O UP CASTING' ).
***    disponemos del metodo de la clase hija
*    out->write( lo_animal->walk(  ) ).


*    DATA: go_animal TYPE REF TO zcl_lab_18_animal_ger,
*          go_lion_1 TYPE REF TO zcl_lab_19_lion_ger,
*          go_lion_2 TYPE REF TO zcl_lab_19_lion_ger.
*
*    go_lion_1 = NEW #( ).
*    go_animal = go_lion_1.
*    TRY.
*        go_lion_2 ?= go_animal.
*      CATCH cx_sy_move_cast_error.
*    ENDTRY.
*    IF go_lion_2 IS BOUND.
*      out->write( go_lion_2->walk( ) ).
*    ENDIF.




*    DATA(lo_partner) = NEW zcl_lab_24_partner_ger(  ).
*
*    out->write( lo_partner->get_company_capital(  ) ).
*
*

**Partner
*    DATA(lo_partner) = NEW zcl_lab_24_partner_ger(  ).
*    out->write( lo_partner->get_company_capital(  ) ).
**collaborator
*    DATA(lo_collaborator) = NEW zcl_lab_25_collaborator_ger(  ).
*    out->write( lo_collaborator->get_capital(  ) ).


*    DATA(lo_flight) = NEW zcl_lab_26_flights_ger(  ).

*    lo_flight->zif_lab_01_flight_ger~set_conn_id( iv_conn_id = 'AA' ).
*
*    lo_flight->zif_lab_01_flight_ger~get_conn_id( IMPORTING ev_conn_id = DATA(lv_conn_id)  ).
*
*    out->write( lv_conn_id ).


*    DATA(lo_flight) = NEW zcl_lab_26_flights_ger(  ).
*    out->write( lo_flight->zif_lab_02_customer~get_customer( iv_customer_id = '00001' ) ).
*
*    out->write( lo_flight->zif_lab_03_airports~get_airports( iv_airport = 'FRA' ) ).

*    DATA(lo_flight) = NEW zcl_lab_26_flights_ger(  ).
*    out->write( lo_flight->get_customer( iv_customer_id = '00001' ) ).
*
*    out->write( lo_flight->get_airports( iv_airport = 'FRA' ) ).

*    DATA(lo_logistics) = NEW zcl_lab_28_logistics_ger(  ).
*
*    out->write( lo_logistics->input_products(  ) ).
*    out->write( lo_logistics->merchandise_output(  ) ).
*    out->write( lo_logistics->production_line(  ) ).

*    DATA lt_organizations TYPE TABLE OF REF TO zcl_lab_29_organization_GER.
*
*    " Crear instancias de las subclases
*    DATA lo_org_germany TYPE REF TO zcl_lab_30_org_germany_ger.
*    DATA lo_org_france TYPE REF TO zcl_lab_31_org_france_Ger.
*
*    CREATE OBJECT lo_org_germany.
*    CREATE OBJECT lo_org_france.
*
*    " Añadir instancias a la tabla interna
*    APPEND lo_org_germany TO lt_organizations.
*    APPEND lo_org_france TO lt_organizations.
*
*    " Demostrar polimorfismo llamando al método redefinido
*    LOOP AT lt_organizations INTO DATA(lo_organization).
*      out->write( |Localización de la organización: { lo_organization->get_location( ) }| ).
*    ENDLOOP.


*    DATA lt_employee TYPE TABLE OF REF TO zif_lab_04_employee_ger.
*    DATA(lo_internal) = NEW zcl_lab_32_internal_empl_ger(  ).
*    DATA(lo_expatriate) = NEW zcl_lab_33_expatriate_empl_ger(  ).
*
*    " Añadir instancias a la tabla interna
*    APPEND lo_internal TO lt_employee.
*    APPEND lo_expatriate TO lt_employee.
*
*    " Demostrar polimorfismo llamando al método redefinido
*    LOOP AT lt_employee INTO DATA(lo_employee).
*        out->write( |Tipo de empleado: { lo_employee->get_employees_count( ) }| ).
*    ENDLOOP.



*    DATA(lo_student) = NEW  zcl_lab_34_student_ger(  ).
*    DATA(lo_college) = NEW zcl_lab_35_college_ger(  ).
*
*    lo_student->set_name( 'Gerardo' ).
*    lo_college->enroll_student( ir_student = lo_student ).
*
*    lo_college->lo_student->get_name( IMPORTING ev_name = DATA(lv_student_name) ).
*    out->write( lv_student_name ).


*    DATA(lo_screen) = NEW zcl_lab_37_screen_ger(  ).
*    lo_screen->set_screen_type( 'LCD' ).
*
*    DATA(lo_phone) = NEW zcl_lab_36_phone_ger( ir_screen = lo_screen ).
*
*
*    out->write( lo_phone->get_screen(  )->get_screen_type(  ) ).

*    DATA(lo_product1) = NEW zcl_lab_38_prod_price_ger(  ).
*    DATA(lo_product2) = NEW zcl_lab_38_prod_price_ger(  ).
*
*    lo_product2 = lo_product1.
*
*    lo_product2->price = 5.
*
*    out->write( lo_product1 ).


*    DATA lo_budget TYPE REF TO zcl_lab_39_budget_ger.
*
*    lo_budget = NEW zcl_lab_40_actual_budget_ger(  ).
*
*    out->write( lo_budget->get_budget(  ) ).
*
*    DATA: lo_object       TYPE REF TO object,
*          lv_method       TYPE string,
*          lv_headquarters TYPE string.
*
*    lo_object = NEW zcl_lab_41_organization_ger( ).
*
*    lv_method = 'SET_HEADQUARTERS'.
*
*    CALL METHOD lo_object->(lv_method) EXPORTING iv_headquarters = 'Spain'.
*
*    lv_method = 'GET_HEADQUARTERS'.
*
*    CALL METHOD lo_object->(lv_method)
*      RECEIVING
*        rv_headquarters = lv_headquarters.
*
*
*    out->write( lv_headquarters ).

*    DATA(lo_screen) = NEW zcl_lab_42_screen_ger( iv_screen_type = 'AMOLED' ).
*    DATA(lo_navigation) = NEW zcl_lab_43_navigation_ger( ).
*
*    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.
*
*    lo_screen->element_selected( ).
*
*    out->write( lo_navigation->log ).

*    DATA(lo_operating_system) = NEW zcl_lab_44_op_system_ger( ).
*
*    DATA(lo_chrome) = NEW zcl_lab_45_chrome_ger( ).
*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operating_system ACTIVATION abap_false.
*
*    lo_operating_system->mouse_movements( ).
*
*    out->write( |{ lo_operating_system->log }-{ lo_chrome->log }| ).

*    SET HANDLER zcl_lab_47_customer_servic_ger=>on_new_call.
*
*    zcl_lab_46_mobile_operator_ger=>assign_call( ).
*
*    out->write( zcl_lab_47_customer_servic_ger=>log ).



*    DATA(lo_administr_dep_1) = NEW zcl_lab_48_admi_dep_ger( 'EMPL-1' ).
*    DATA(lo_administr_dep_2) = NEW zcl_lab_48_admi_dep_ger( 'EMPL-2' ).
*    DATA(lo_administr_dep_3) = NEW zcl_lab_48_admi_dep_ger( 'EMPL-3' ).
*
*    DATA(lo_employee) = NEW zcl_lab_49_employee_ger( ).
*
*    SET HANDLER lo_employee->on_payroll_paid FOR ALL INSTANCES.
*
*    lo_administr_dep_1->notify_employee( ).
*    out->write( lo_employee->log ).
*
*    lo_administr_dep_2->notify_employee( ).
*    out->write( lo_employee->log ).
*
*    lo_administr_dep_3->notify_employee( ).
*    out->write( lo_employee->log ).



*    DATA(lo_chek_user) = NEW zcl_lab_53_check_ger( ).
*    TRY.
*        lo_chek_user->check_user( iv_user = sy-uname ).
*      CATCH zcx_lab_52_operations_ger INTO DATA(lx_operations).
*        out->write( lx_operations->get_text( ) ).
*    ENDTRY.



*    DATA: lv_n1 TYPE i,
*          lv_n2 TYPE i.
*
*    lv_n1 = 10.
*    lv_n2 = 0.
*
*    TRY.
*        DATA(lv_result) = lv_n1 / lv_n2. " Division by zero
*        out->write( 'Exception resolved ' ).
*        out->write( |Result = { lv_result }| ).
*      CATCH cx_root INTO DATA(lx_excepcion).
*
*        out->write( lx_excepcion->get_text( ) ).
*        out->write( 'Exception catched and managed by CX_ROOT' ).
*
*        lv_n2 = 2.
*
*        out->write( 'Aplicando RETRY' ).
*
*        RETRY.
*
*    ENDTRY.



*    DATA: lv_result TYPE i,
*          lv_num1   TYPE i VALUE 10,
*          lv_num2   TYPE i.
*    TRY.
*        TRY.
*            lv_result = lv_num1 + lv_num2.
*            lv_result = lv_num1 / lv_num2.
*            lv_result = lv_num1 - lv_num2.
*
*          CATCH zcx_lab_52_operations_ger INTO
*          DATA(lx_operations).
*            out->write( lx_operations->get_text( ) ).
*          CATCH cx_a4c_bc_exception.
*
*          CLEANUP INTO DATA(lx_cleanup1).
*
*            out->write( |Cleanup 1....Result: { lv_result }|            ).
*            out->write( lx_cleanup1->get_text( ) ).
*
*        ENDTRY.
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*
*        out->write( lx_zerodivide->get_text( ) ).
*
*        lv_num2 = 2.
*
*        RETRY.
*
*      CLEANUP INTO DATA(lx_cleanup2).
*
*        out->write( |Cleanup 2....| ).
*        out->write( lx_cleanup2->get_text( ) ).
*
*    ENDTRY.
*    out->write( |FINISH: { lv_result }| ).


*    DATA: go_singleton_1 TYPE REF TO zcl_lab_62_context_ger,
*          go_singleton_2 TYPE REF TO zcl_lab_62_context_ger.
*
*    go_singleton_1 = zcl_lab_62_context_ger=>get_instance( ).
*
*    WAIT UP TO 2 SECONDS.
*
*    go_singleton_2 = zcl_lab_62_context_ger=>get_instance( ).
*
*    out->write( go_singleton_1->mv_time ).
*    out->write( go_singleton_2->mv_time ).

data(mod) = ipow( base = 2 exp = 3 ).

  ENDMETHOD.

ENDCLASS.
