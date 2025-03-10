@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZDATA_AGGREGATION_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}


define view entity ZDATA_AGGREGATION_2411

  as select from /dmo/booking
{
  currency_code        as CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  sum ( flight_price ) as TotalFlightPrice
}

group by

  currency_code
