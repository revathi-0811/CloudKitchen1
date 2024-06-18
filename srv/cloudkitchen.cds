using { com.revathi.nnrg as db } from '../db/schema';
using {API_PRODUCT_SRV as productapi} from './external/API_PRODUCT_SRV';

service nnrg  @(requires: 'authenticated-user'){
    
    entity kitchen @(restrict: [
        {grant: ['READ'],to:'CloudKitchenRead'},
        {grant:['WRITE'],to:'CloudKitchenWrite'},
        {grant:['DELETE'],to:'CloudKitchenDelete'}
    ]) as projection on db.kitchen;    

    entity Products as projection on productapi.A_Product{
    Product,
    ProductType,
    BaseUnit,
    ProductGroup
  }   
}

annotate nnrg.kitchen with @odata.draft.enabled;      