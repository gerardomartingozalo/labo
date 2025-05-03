@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '''CDS - View CDS with texts associations'''
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_CITY_TEXT_ger

  as select from zcity_texts_ger
  association [1..1] to ZCDS_CITY_ASSOC_ger as _CityText on _CityText.City = $projection.City
{
  key zcity_texts_ger.airport_id as AirportId,
      @Search.defaultSearchElement: true
      @ObjectModel.text.association: '_CityText'
      zcity_texts_ger.city       as City,
      _CityText

}
