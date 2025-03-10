@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_CUST_BOOK_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_CUST_BOOK_2411

 as select from /dmo/booking
 
 association to parent ZCDS_CUSTOMER_ROOT_2411 as _Customer on _Customer.CustomerId = $projection.CustomerId
 
 
{

    key _Customer.CustomerId as CustomerId,
    key /dmo/booking.travel_id as TravelId,
    key /dmo/booking.booking_id as BookingId,

    
    _Customer
    
}
