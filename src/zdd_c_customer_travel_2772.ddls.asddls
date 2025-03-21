@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo Entidad'
@Metadata.ignorePropagatedAnnotations: true

//activacion del ME
@Metadata.allowExtensions: true

@Search.searchable: true
define root view entity ZDD_C_CUSTOMER_TRAVEL_2772
  provider contract transactional_query
  as projection on ZDD_R_CUSTOMER_TRAVEL_2772
{
  key CustomerUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
     // @ObjectModel.text.element: [ 'CustomerName' ]
      CustomerId,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      FlightDate,
      
      _Customer.LastName  as CustomerName,
      _Customer._Country._Text[1: Language = $session.system_language].CountryName as CustomerCountry,
      
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
