using {nnrg.ProductLocal as Product} from './cloudkitchen';

annotate nnrg.ProductLocal with @(
    UI.LineItem:[
        {
            $Type:'UI.DataField',
            Value: Product
        },
        {
            $Type:'UI.DataField',
            Value: ProductType
        },
        {
            $Type:'UI.DataField',
            Value: BaseUnit
        },
      
        {
            $Type:'UI.DataField',
            Value: ProductGroup
        },
          {
            $Type:'UI.DataField',
            Value: ProductDescription
        },


    ]
);

annotate nnrg.ProductLocal with @(       
    UI.FieldGroup #ProductsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Product',
            Value : Product
        },
        {
            $Type : 'UI.DataField',
            Value : ProductType
        },
        {
            $Type : 'UI.DataField',
            Value : BaseUnit
        },
        {
            $Type : 'UI.DataField',
            Value : ProductGroup
        },
        {
            $Type : 'UI.DataField',
            Value : ProductDescription
        },
     
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductsInfoFacet',
            Label : 'Products Information',
            Target : '@UI.FieldGroup#ProductsInformation',                       
        },
    ],    
);