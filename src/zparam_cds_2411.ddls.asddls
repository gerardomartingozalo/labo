@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZPARAM_CDS_2411'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZPARAM_CDS_2411 

  with parameters
    p_flight_date: abap.dats
    
as select from /dmo/booking
    
{
    key travel_id as TravelID,        
    key booking_id as BookingID,       
    customer_id as CustomerID,          
    flight_date as FlightDate          
}
  
where flight_date = $parameters.p_flight_date 
