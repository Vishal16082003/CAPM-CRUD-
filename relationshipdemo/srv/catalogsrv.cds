using {relationshipdemo.db as rel} from  '../db/relshipdemo';

service relsrv{

entity HeaderSet as projection on rel.Header;
entity ItemSet as projection on rel.Items;

entity SalesOrderHeaderSet as projection on rel.SalesOrderHeader;
entity SalesOrderItemsSet as projection on rel.SalesOrderItems;
}

annotate rel.SalesOrderHeader with @(
    UI : {
        SelectionFields  : [
            ID,description
        ],
        LineItem: [
            { $Type: 'UI.DataField', Value: ID },
            { $Type: 'UI.DataField', Value: description }
            ]
    }
) ;
annotate rel.SalesOrderItems with @(
    UI:{
        SelectionFields  : [
            ID, header, product,quantity
        ],
        LineItem  : [
            { $Type : 'UI.DataField' , Value : ID},
            { $Type : 'UI.DataField' , Value : header},
            { $Type : 'UI.DataField' , Value : product},
            { $Type : 'UI.DataField' , Value : quantity},
        ],
    }
 
 ) ;
