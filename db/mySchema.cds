namespace sales;

entity Product {
    key ID         : UUID;
    name           : String(100);
    description    : String(500);
    price          : Decimal(10, 2);
    currency       : String(3);
}

entity Category {
    key ID         : UUID;
    name           : String(100);
    description    : String(500);
    products       : Composition of many Product;
}

entity Order {
    key ID         : UUID;
    date           : DateTime;
    total          : Decimal(10, 2);
    status         : String(20);
    customer       : Association to Customer;
    items          : Composition of many OrderedItem;
}

entity Customer {
    key ID         : UUID;
    name           : String(100);
    email          : String(100);
    orders         : Association to Order;
}

entity OrderedItem {
    key ID         : UUID;
    order          : Association to Order;
    product        : Association to Product;
    quantity       : Integer;
    unitPrice      : Decimal(10, 2);
}
