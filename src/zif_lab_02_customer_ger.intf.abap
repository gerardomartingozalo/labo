INTERFACE zif_lab_02_customer_ger
  PUBLIC .

    TYPES: BEGIN OF TY_CUST_ADDRESS,
             FIRST_NAME     TYPE string,
             LAST_NAME  TYPE string,
           END OF TY_CUST_ADDRESS.


METHODS GET_CUSTOMER IMPORTING IV_CUSTOMER_ID type string
                     RETURNING VALUE(rv_adress) type TY_CUST_ADDRESS.

ENDINTERFACE.
