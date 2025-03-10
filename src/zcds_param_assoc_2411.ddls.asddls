@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_PARAM_ASSOC_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PARAM_ASSOC_2411 
  with parameters
    pCarrierId: /dmo/carrier_id

as select from /dmo/flight as Flight
association [0..1] to /dmo/carrier as _Carrier on _Carrier.carrier_id = $projection.CarrierId
{
    key Flight.carrier_id as CarrierId,
    key Flight.connection_id as ConnectionId,
    key Flight.flight_date as FlightDate,
    _Carrier.name

} 
where Flight.carrier_id = $parameters.pCarrierId
