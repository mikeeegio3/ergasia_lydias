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
</head>

<body>



    <!-- Navigation-->
    <?php
    require "require/navbar.php";

    $search_thing = $_GET["search"];

    ?>
    <!-- telos navigation -->

    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-2 ">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Αποτελέσματα αναζήτησης</h1>
                <p class="lead fw-normal text-white-50 mb-0">Τι θα φτιάξουμε σήμερα;</p>
            </div>
        </div>
    </header>


    <!---main section-->
    <div class="d-flex container-fluid p-5 row">


        <!-- sydages section-->
        <section class=" col-12">
            <div class="container px-4 px-lg-5 mt-5">
                

                <div class="row">


                    <?php
                    if ($_GET["search"] != "") {
                        $search_thing = $_GET["search"];
                        echo "<h2 class='text-center my-5'>Συνταγές με: " . $search_thing . "</h1>";
                    } else {
                        echo "<h2 class='text-center my-5'>Συνταγές με: 🤔</h1>";
                    }

                    ?>

                    <div class="container rounded syntages-container">
                        <div class="row">
                            <div class="col-lg-12 p-4">
                                <!-- div me kartes syntagwn -->
                                <div class="container-fluid  row    ml-4 rounded syntages-midsection p-4">



                                    <?php
                                    require "connect_MAOY.php";
                                    require "require/recipe_card.php";
                                    if ($_GET["search"] != "") {
                                        $search_thing = $_GET["search"];

                                        $find_recipe_with_id_sql = "SELECT * FROM recipes WHERE title LIKE '%$search_thing%'";


                                        $recipe = mysqli_query($conn, $find_recipe_with_id_sql);
                                        $result_number = mysqli_num_rows($recipe);

                                        if ($result_number == 0) {
                                            echo "<h5>Δεν υπαρχουν συνταγές με: " . $search_thing . "</h5>";
                                        } else {
                                            while ($recipe_fetch = mysqli_fetch_assoc($recipe)) {

                                                single_card_function($recipe_fetch);
                                            };
                                        }
                                    } else {
                                        echo "<h5>anazhthse kati valid glykoulh</h5>";
                                    }





                                    ?>

                                </div>
                            </div>
        </section>
    </div>

    <!-- gia na mhn kanei resubmit me kathe refresh -->
    <script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <?php require "require/footer.php"; ?>       
    </footer>
    <!--End of footer-->


</body>

</html>