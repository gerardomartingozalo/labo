@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCDS_PUBLIC_ASSOC_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PUBLIC_ASSOC_2411 as select from /dmo/travel as Travel

association[1..1] to ZCDS_AGENCY_MAX as _Agency on _Agency.AgencyId = $projection.AgencyId

{
    key Travel.travel_id as TravelId,
    Travel.agency_id as AgencyId,
    
    _Agency
}
