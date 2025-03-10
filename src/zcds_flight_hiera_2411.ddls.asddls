@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_FLIGHT_HIERA_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_FLIGHT_HIERA_2411
  as select from /dmo/travel

  association [1..1] to ZCDS_FLIGHT_HIERA_2411 as _Travel on _Travel.CustomerId = $projection.CustomerId and
                                                             _Travel.AgencyId = $projection.AgencyId

{
      agency_id   as AgencyId,
      customer_id as CustomerId,

      _Travel

}
