<?php
// 1. CONEXIUNEA LA BAZA DE DATE
$servername = "localhost";
$username = "root"; // User-ul default în XAMPP
$password = "";     // Parola default e goală în XAMPP
$dbname = "service"; // Numele bazei de date creat în SQL-ul tău

// Creăm conexiunea
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificăm conexiunea
if ($conn->connect_error) {
    die("Conexiunea a eșuat: " . $conn->connect_error);
}

// 2. INTEROGAREA (SELECT)
$sql = "SELECT * FROM informatiiautovehicul";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="ro">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fișa de Service Auto</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #0056b3;
            border-bottom: 2px solid #0056b3;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        /* Stil pentru fiecare fișă de mașină */
        .fisa-masina {
            margin-bottom: 40px;
            border-bottom: 2px dashed #ccc;
            padding-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #0056b3;
            color: white;
            font-weight: bold;
            width: 30%;
        }

        .long-text {
            white-space: pre-wrap; 
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Jurnal Intrări în Service</h1>

    <?php
    // 3. AFIȘAREA DATELOR (BUCLA)
    if ($result->num_rows > 0) {
        // Cât timp avem rânduri în baza de date, generăm câte un tabel pentru fiecare
        while($row = $result->fetch_assoc()) {
    ?>
            <div class="fisa-masina">
                <table>
                    <tr>
                        <th>Marca și Modelul</th>
                        <td><strong><?php echo $row["marca_model"]; ?></strong></td>
                    </tr>
                    <tr>
                        <th>Număr de Înmatriculare</th>
                        <td><?php echo $row["numar_inmatriculare"]; ?></td>
                    </tr>
                    <tr>
                        <th>Proprietar</th>
                        <td><?php echo $row["nume_proprietar"]; ?></td>
                    </tr>
                    <tr>
                        <th>Data Intrării în Service</th>
                        <td><?php echo $row["data_intrare"]; ?></td>
                    </tr>

                    <tr>
                        <th>Problema Reclamată</th>
                        <td class="long-text"><?php echo $row["problema_reclamata"]; ?></td>
                    </tr>
                    <tr>
                        <th>Piese Schimbate</th>
                        <td class="long-text"><?php echo $row["piese_schimbate"]; ?></td>
                    </tr>
                    <tr>
                        <th>Mecanic/Tehnician</th>
                        <td><?php echo $row["mecanic"]; ?></td>
                    </tr>
                    <tr>
                        <th>Observații / Recomandări</th>
                        <td class="long-text"><?php echo $row["observatii_recomandari"]; ?></td>
                    </tr>
                </table>
            </div>
            <?php
        } // Închidem bucla while
    } else {
        echo "<p style='text-align:center'>Nu există intrări în baza de date.</p>";
    }
    
    // Închidem conexiunea
    $conn->close();
    ?>

</div>

</body>
</html>