@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZDD_I_CUSTOMER_TRAVEL_2772
  provider contract transactional_interface


  as projection on ZDD_R_CUSTOMER_TRAVEL_2772
{
  key CustomerUuid,
      CustomerId,
      FlightDate,
      Description,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      Price,
      CurrencyCode,
      OverallStatus,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Customer
}
