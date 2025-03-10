@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZSALES_CONVERTED_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZSALES_CONVERTED_2411
  as select from /dmo/booking
{

      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion( amount => flight_price,
      source_currency => currency_code,
      target_currency => cast ( 'USD' as abap.cuky) ,
      exchange_rate_date => booking_date,
      error_handling => 'SET_TO_NULL') as FLIGHT_PRICE_USD,

      currency_code                                as CurrencyCode
}
