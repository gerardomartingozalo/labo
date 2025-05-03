@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection virtual'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcds_proj_virtual_disc_GER
  as projection on zcds_virtual_discount_ger
{
  key     CarrierId,
  key     ConnectionId,
  key     FlightDate,
          @Semantics.amount.currencyCode: 'CurrencyCode'
          Price,
          CurrencyCode,
          PlaneTypeId,
          SeatsMax,
          SeatsOccupied,
          @EndUserText.label: 'Price with Discount'
          @ObjectModel.virtualElementCalculatedBy:
          'ABAP:ZCL_VIRTUAL_DISCOUNT_GER'
          @Semantics.amount.currencyCode: 'CurrencyCode'
  virtual RealPrice : abap.curr(16,2)
}
