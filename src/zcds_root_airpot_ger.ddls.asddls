@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '''CDS - Root View City'''
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zcds_root_airpot_ger

  as select from /dmo/airport
  association [1..1] to ZCDS_CITY_ASSOC_ger as _Text on _Text.City = $projection.City
{
  key airport_id as AirportId,
      name       as Name,
      city       as City,
      country    as Country,
      _Text

}
