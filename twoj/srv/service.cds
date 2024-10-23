using {com.sap.pos as persistence } from '../db/schema';

service PurchaseOrderService {

@cds.persistence.skip
      entity PurchaseOrders as projection on persistence.PurchaseOrders {
        ID, orderDate, description,
      modifications[isDeduction = true] as allowances,
      modifications[isDeduction = false] as charges,
} 
  
}
