<?php

    $host = 'localhost';    // ***
    $dbname = 'postgres';   // учётка PostgreSQL
    $port = '5432';          // порт БД
    $user = 'root';         // логин PostgreSQL
    $password = 'root';     // пароль PostgreSQL

$dsn = "pgsql:host={$host};port:{$port};dbname={$dbname};user={$user};password={$password}"; // подключение к БД
$con = mysqli_connect('localhost','root','root','postgres','5432');
mysqli_select_db('postgres', $con);

$name = filter_var(trim($_POST['name']),FILTER_SANITIZE_STRING);
$surname = filter_var(trim($_POST['surname']),FILTER_SANITIZE_STRING);

if (mb_strlen($name) <2 || mb_strlen($name) >20)
    {
        echo "Логин слишком велик";
        exit;
    }

    else if (!preg_match('/^[а-яА-Я]+$/iu', $name))
        {
            echo "Имя не должно иметь чисел";
            exit;
        }

if (mb_strlen($surname) <2 || mb_strlen($surname) >20)
        {
            echo "Ваша фамилия слишком длинная";
            exit;
        }

    else if (!preg_match('/^[а-яА-Я]+$/iu', $surname))
        {
            echo "Ваша фамилия содержит лишние символы";
            exit;
        }

header('location: /' );

?>