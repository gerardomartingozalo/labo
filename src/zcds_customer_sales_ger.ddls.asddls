@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '''CDS - CDS with enum and cds type on'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_customer_sales_ger

  as select from /dmo/customer

{
  key customer_id                      as CustomerId,
      first_name                       as FirstName,
      last_name                        as LastName,
      title                            as Title,
      street                           as Street,
      postal_code                      as PostalCode,
      city                             as City,
      country_code                     as CountryCode,
      phone_number                     as PhoneNumber,
      email_address                    as EmailAddress,
      @EndUserText.label: 'Sale Status'
      zty_enum_st_order_ger.#delivered as StatusSale,
      @EndUserText.label: 'Sale Name'
      cast( first_name as zty_cds_st_order_ger) as SaleName

}
