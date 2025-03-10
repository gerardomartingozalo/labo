@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZUNIT_CONVERSION_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUNIT_CONVERSION_2411
  as select from /dmo/fsa_root_a
{
  key id                                                  as Id,
      string_property                                     as StringProperty,
      uom                                                 as Uom,
      

      @Semantics.quantity.unitOfMeasure: 'Uom'
      unit_conversion( quantity => field_with_quantity,
                       source_unit => abap.unit'A',
                       target_unit => abap.unit'W',
                       error_handling => 'SET_TO_NULL',
                       client => $session.client ) as FIELD_WITH_QUANTITY

}
