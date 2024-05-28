<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Lyda</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>

<body>
    <!-- Navigation-->
    <?php
    $search_thing = '';
    require "require/navbar.php";
    ?>
    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-2 ">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Αλμυρές & γλυκές συνταγές!</h1>
                <p class="lead fw-normal text-white-50 mb-0">Τι θα φτιάξουμε σήμερα;</p>
            </div>
        </div>
    </header>
    <!--Choose Almyres or Glykes -->
    <section class="py-4">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="card h-100">
                <!-- Almyres details-->
                <div class="card-body p-4">
                    <div class="text-center">
                        <!-- Almyres name-->
                        <h5 class="fw-bolder">Αλμυρές</h5>
                        συνταγές
                    </div>
                </div>
                <!-- View more action-->
                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="syntages.php?category=Αλμυρό">View
                            options</a></div>
                </div>
            </div>
            <div class="card h-100">
                <!-- Glykes details-->
                <div class="card-body p-4">
                    <div class="text-center">
                        <!-- Glykes name-->
                        <h5 class="fw-bolder">Γλυκές</h5>
                        συνταγές
                    </div>
                </div>
                <!-- View more action-->
                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="syntages.php?category=Γλυκό">View
                            options</a></div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-1">
    <!--Carousel-->
    <?php require "require/home_carousel.php"; ?>
    <!-- telos karousel -->
    </section>

    
     <!-- Footer-->
     <footer class="py-5 bg-dark">
        <?php require "require/footer.php"; ?>       
    </footer>
    <!--End of footer-->

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>