create schema if not exists netology;

create table if not exists customers (
    id int auto_increment primary key,
    name varchar(255) not null,
    surname varchar(255) not null,
    age int not null,
    phone_number int not null
    );

create table if not exists orders (
    id int auto_increment primary key,
    date date,
    customer_id int references customers (id),
    product_name varchar(255),
    amount int
    );