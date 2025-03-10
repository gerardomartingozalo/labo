@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZDATA_MODELING_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_MODELING_2411

  as select from /dmo/customer
{
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      $session.system_date as SystemDate,
      $session.client as SystemCLient,
      
      cast( customer_id as abap.int8 ) as customer_id_user,
      
      case 
      when country_code = 'US' then 'United States'
      when country_code = 'DE' then 'Germany'
      else 'Other Country'
      end as Country

}
