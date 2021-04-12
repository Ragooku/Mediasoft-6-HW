      create table if not exists users
(
    id          serial primary key,
    name        varchar(255)        not null default '',
    last_name   varchar(255)        not null default '',
    work        varchar(255)        not null default '',
    email       varchar(255) UNIQUE not null default '',
    work_id     int,
    users_id    int,
    price       NUMERIC,
    UNIQUE (email)

);

    create table if not exists works
(
    id          serial primary key,
    works_name  varchar(255) not null default '',
    status      bool
);

    create table if not exists timing
(
    id      serial primary key,
    code    varchar(255) not null default '',
    track   uuid,
    work_id int,
    user_id int
);

insert into users (id, name, last_name, email, age, price)
    VALUES  (1,'vadim', 'myasnikov', 'myaso@gmail.ru', 23, '45000'),
            (2,'yulia', 'leshvanova', 'leshvanova2003@gmail.ru', 17, '35000'),
            (3,'artyom', 'salikhov', 'artyom2022@gmail.com', 19, '58000'),
            (4,'vadim', 'kim', 'kim2555@mail.ru', 19, '64000'),
            (5,'vlad', 'stepanov', 'styopa2898@gmail.com', 19, '40000'),
            (6,'nikita', 'kholod', '1mmswith12000@mail.ru', 19, '27000'),
            (7,'lysak', 'vladislav', '1mmswith12000@mail.ru', 19, '62000');

select DISTINCT id, name, last_name, email, price from users;


    select DISTINCT id, name, last_name,email,price
        from users where price >= 58000 or name = 'lysak';


    select DISTINCT name, last_name,price
        from users where price >= 58000 or name = 'vladislav' limit 5;