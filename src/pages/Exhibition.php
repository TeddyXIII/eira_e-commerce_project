<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
</head>

<body>
    <?php include '../features/layouts/top-nav.php' ?>

    <!-- artworks -->
    <?php
    include '../../database/db_connect.php';

    $sql = "SELECT * from artworks";
    $result = mysqli_query($conn, $sql)
        ?>

    <div class="card-container">
        <?php while ($row = mysqli_fetch_assoc($result)): ?>

            <?php
            $imageData = base64_encode($row['Artwork_Image']);
            $src = 'data:image/jpeg;base64,' . $imageData; ?>

            <div class="card">
                <a href="product_details.php?id=<?php echo $row['id']; ?>" class="card-link">
                    <div class="card-content">
                        <div class="card-info">
                            <img src="<?php echo $src; ?>" alt="artwork">
                            <div class="artwork-title"><?php echo $row['Artwork-Title']; ?></div>
                            <div class="artwork-artist"><?php echo $row['Artist-Name']; ?></div>
                            <div class="artwork-price">$<?php echo $row['Price']; ?></div>
                            <div class="artwork-size"><?php echo $row['Dimensions']; ?></div>
                        </div>
                    </div>
                </a>

                <div class="add">
                    <div class="btn-add-cart">
                        <a href="#">Basket Icon</a>
                    </div>
                    <div class="btn-add-wishlist">
                        <a href="#">Heart Icon</a>
                    </div>
                </div>
            </div>
        </div>

    <?php endwhile; ?>
    </div>
    </a>


    <?php include '../features/layouts/footer.php' ?>

</body>

</html>