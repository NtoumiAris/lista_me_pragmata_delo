using sales from '../db/mySchema';


service CatalogService {
    entity Products as projection on sales.Product;
    entity Categories as projection on sales.Category;



    entity Order as projection on sales.Order;
    entity Customers as projection on sales.Customer;
    entity OrderedItems as projection on sales.OrderedItem;

   
   
    
    entity NewOrder as
    select
        key ID
            
            
    from Order;
}

