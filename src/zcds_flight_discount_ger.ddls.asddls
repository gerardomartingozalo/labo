@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '''CDS - CDS with SF for Flight Discount'''
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_flight_discount_ger
  as select from /dmo/flight
{
  key carrier_id          as CarrierId,
  key connection_id       as ConnectionId,
  key flight_date         as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price               as Price,
      currency_code       as CurrencyCode,
      plane_type_id       as PlaneTypeId,
      seats_max           as SeatsMax,
      seats_occupied      as SeatsOccupied,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      zsf_calc_discount_ger(pClientCucky => currency_code,
                            pDiscount => price) as FlightDiscount
}
