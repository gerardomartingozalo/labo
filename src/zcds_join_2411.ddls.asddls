@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_JOIN_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_JOIN_2411 

  as select from /dmo/booking as b
    inner join /dmo/flight as f
      on b.carrier_id = f.carrier_id
{
    key b.booking_id as BookingID,             
    f.flight_date as FlightDate,   
    @Semantics.amount.currencyCode : 'CurrencyCode'            
    f.price as Price,                    
    f.currency_code   as CurrencyCode            
}
