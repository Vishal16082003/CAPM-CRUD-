namespace sodemo.db;
using { cuid , managed } from '@sap/cds/common';

entity SO : cuid , managed {
    customer : String;
    ammount  : Integer;

    
 }