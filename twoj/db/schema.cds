namespace com.sap.pos;

entity PurchaseOrders {
  key ID: UUID;
  orderDate : DateTime;
  description : String;
  modifications : Composition of many Modifications on modifications.purchaseOrder = $self;
}

entity Modifications {
    key ID: UUID;
    percentage : Integer;
    isDeduction : Boolean;
    purchaseOrder : Association to one PurchaseOrders;
}