@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_CUST_PROJ_2411'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUST_PROJ_2411 
provider contract transactional_interface
as projection on ZCDS_CUSTOMER_ROOT_2411
{
    key CustomerId,
    FirstName,
    LastName,
    City,
    /* Associations */
    _Airport,
    _Booking  : redirected to composition child ZCDS_CHILD_PROJS_2411
}
