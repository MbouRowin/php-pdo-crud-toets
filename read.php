<?php

// https://stackoverflow.com/questions/30074492/what-is-the-difference-between-utf8mb4-and-utf8-charsets-in-mysql
$dsn = 'mysql:host=localhost;dbname=php-pdo-crud-toets;charset=utf8mb4';

$options = [
    // Default is FETCH_BOTH (both indexed and associative array)
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];

// Connect to database
$pdo = new PDO($dsn, 'root', '', $options);

// Select all cars
$cars = $pdo->query('SELECT * FROM DureAuto ORDER BY CAST(Prijs AS int) DESC');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table,
        td,
        th {
            border: 1px solid black;
        }

        a,
        svg {
            display: block;
        }
    </style>
</head>

<body>
    <h1>De vijf duurste auto's ter wereld</h1>
    <table>
        <tr>
            <th>Merk</th>
            <th>Model</th>
            <th>Topsnelheid</th>
            <th>Prijs</th>
            <th>Delete</th>
        </tr>
        <?php while ($row = $cars->fetch()) : ?>
            <tr>
                <td><?= $row['Merk'] ?></td>
                <td><?= $row['Model'] ?></td>
                <td><?= $row['Topsnelheid'] ?></td>
                <td><?= $row['Prijs'] ?></td>
                <td>
                    <a href="delete.php?id=<?= $row['Id'] ?>">
                        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="red" class="bi bi-x" viewBox="0 0 16 16">
                            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                        </svg>
                    </a>
                </td>
            </tr>
        <?php endwhile ?>
    </table>
</body>

</html>