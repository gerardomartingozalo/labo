@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_CUSTOMER_ROOT_2411'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUSTOMER_ROOT_2411 

as select from /dmo/customer

composition [1..1] of ZCDS_CUST_BOOK_2411 as _Booking

association [1..*] to /dmo/airport as _Airport on _Airport.city = $projection.City

{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    city as City,
    
    
    _Booking,
    
    _Airport
    //_association_name // Make association public
}
