@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_EXPLICIT_JOIN_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_EXPLICIT_JOIN_2411

  as select from /dmo/customer as Customer


  association [0..*] to /dmo/booking as _Booking on _Booking.customer_id = $projection.CustomerId
{
  key Customer.customer_id as CustomerId,
      Customer.first_name  as FirstName,
      Customer.last_name   as LastName,
      _Booking[inner].booking_date
}
