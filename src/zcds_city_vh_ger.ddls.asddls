@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'vh ger'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_city_vh_ger
  as select from ZCDS_CITY_ASSOC_ger
{
  key CustomerId,
      FirstName,
      LastName,
      Title,
      Street,
      PostalCode,
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
      @Search.defaultSearchElement: true
      @Semantics.text: true
      @ObjectModel.text.association: '_CityText'
      City,
      CountryCode,
      PhoneNumber,
      EmailAddress,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _CityText
}
