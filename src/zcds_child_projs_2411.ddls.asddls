@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_CHILD_PROJS_2411'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CHILD_PROJS_2411 


as projection on ZCDS_CUST_BOOK_2411
 

{
    key CustomerId,
    key TravelId,
    key BookingId,
    /* Associations */
    _Customer: redirected to parent ZCDS_CUST_PROJ_2411
}
