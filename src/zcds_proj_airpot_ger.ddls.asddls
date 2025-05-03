@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '''CDS - Projection View Airport'''
@Metadata.ignorePropagatedAnnotations: true

@Search.searchable: true
@VDM.viewType: #BASIC
define root view entity zcds_proj_airpot_ger

  as projection on zcds_root_airpot_ger
{
  key AirportId,
      Name,
      @ObjectModel.text.element: [ 'City' ]
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zcds_city_vh_ger',
      element : 'City' },
      useForValidation: true }]
      City,
      Country,
      /* Associations */
      _Text._CityText.AirportId as AirportText
}
