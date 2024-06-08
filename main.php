<?php
session_start();



require "function.php";

$konserQuery = "SELECT * FROM infokonser ORDER BY id ASC";

if (isset($_POST["cari"])) {
    $konser = cari($_POST["keyword"]);
} else {
    $konser = query($konserQuery);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penjualan Tiket Konser</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<header>
        <nav class="atas">
            <form>
                <input id="search_id" type="text" size="30">
                <div id="container_search"></div>
            </form>
            <ul>
                <li>
                    <a href="main.php">Home</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <?php if (isset($_SESSION['user'])): ?>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
                <?php else: ?>
                    <li>
                        <a href="login.php">Login</a>
                    </li>
                <?php endif; ?>
            </ul>
        </nav>
    </header>

    <div id="konten1" class="konten">
        <h2>Event Terdekat</h2>
        <div class="sheila">
            <?php foreach ($konser as $event): ?>
                <div class="konser-item" name="<?= htmlspecialchars($event['artis']) ?>">
                    <a href="<?= strtolower(str_replace(' ', '', $event['artis'])) ?>.html">
                        <img src="<?= strtolower(str_replace(' ', '', $event['artis'])) ?>.png" alt="<?= htmlspecialchars($event['artis']) ?>">
                    </a>
                    <p><?= htmlspecialchars($event['artis']) ?></p>
                    <p><?= htmlspecialchars($event['tempat'] ?? 'Unknown') ?>, <?= date('d F Y', strtotime($event['tanggal'])) ?><br />
                        Rp.<?= number_format($event['harga'] ?? 0, 0, ',', '.') ?>
                    </p>
                    <div class="detail-link">
                        <a href="<?= strtolower(str_replace(' ', '', $event['artis'])) ?>.html">Detail</a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <footer>
        <p>Beli Tiket Konser Hanya Di tiketkonser.com</p>
    </footer>

    <script>
        var search = document.querySelector('#search_id');
        search.addEventListener("keyup", (event) => {
            // Your search logic here (if needed)
        });
    </script>

</body>
</html>
