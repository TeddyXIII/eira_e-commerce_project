<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eira</title>
    <link rel="stylesheet" href="/eira/src/assets/style/styles.css?<?php echo time(); ?>" type="text/css">
</head>

<body>
    <section class="hero">
        <div class="top-bar">
            <div id="login-link"><a href="/eira/src/pages/login/register.php">Login</a></div>
        </div>

        <div class="hero-logo">
            <h2><a href="home.html">Eira</a></h2>
        </div>

        <div class="content-text">
            <div class="content-description-text">
                <h1 id="text-1">This portal serves as a bridge<br>for independent artists to sell their craft<br>and for
                    you to claim it<br><br>Explore original tableaux curated for the discerning eye</h1>
                <h1 id="text-2">“For what is a world bereft of art?<br>Just a rock.”</h1>
            </div>
        </div>

        <div class="enter-shop">
            <a href="src/pages/home.html">ENTER HOME</a>
        </div>

        <?php
        include 'src/features/layouts/bottom-nav.html'
            ?>

    </section>

    <script src="scripts/main.js"></script>
</body>

</html>