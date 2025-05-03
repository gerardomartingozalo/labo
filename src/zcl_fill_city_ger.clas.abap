CLASS zcl_fill_city_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_city_ger IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lt_cities TYPE TABLE OF zcity_texts_ger.
    DATA ls_cities TYPE zcity_texts_ger.
    DATA it_dmo_airport  TYPE TABLE OF /dmo/airport.
    DATA is_dmo_airport  TYPE /dmo/airport.


    DELETE FROM zcity_texts_ger.


    SELECT *
    FROM /dmo/airport
    INTO TABLE @it_dmo_airport.

    LOOP AT it_dmo_airport INTO is_dmo_airport.
      ls_cities-client = is_dmo_airport-client.
      ls_cities-airport_id = is_dmo_airport-airport_id.
      ls_cities-city = is_dmo_airport-city.

      MODIFY zcity_texts_ger FROM @ls_cities.
      commit WORK and wait.

    ENDLOOP.


  ENDMETHOD.

ENDCLASS.
