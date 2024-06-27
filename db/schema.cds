namespace com.revathi.nnrg;
using { managed, cuid } from '@sap/cds/common';

entity kitchen:managed, cuid {
    @title: 'Name'
    name: String(10);
    @title: 'Address1'
    addr1: String(20);
    @title: 'Address2'
    addr2: String(20);
    @title: 'City'
    city: String(10);
    @title: 'State'
    state: String(10);
    @title: 'Pincode'
    pincode: String(6);
    @title: 'Phone'
    phone: String(10);
}
entity ProductLocal: managed {
    @title:'Product'
    @readonly
    key Product: String(40);
    @title:'Producttype'
    @readonly
    ProductType: String(4);
    @title:'BaseUnit'
    @readonly
    BaseUnit: String(3);
    @title : 'ProductGroup'
    @readonly
    ProductGroup: String(18);
    @title : 'ProductDescription'
    ProductDescription: String(40);
}