@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_PATH_EXPRESS_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PATH_EXPRESS_2411 

as select from /dmo/booking as Booking

association[0..*] to /dmo/flight as _Flight on _Flight.carrier_id = $projection.CarrierId

{
    key Booking.travel_id as TravelId,
    key Booking.booking_id as BookingId,
    Booking.carrier_id as CarrierId,    
    
    _Flight[1: connection_id = '0001'].seats_occupied
}
