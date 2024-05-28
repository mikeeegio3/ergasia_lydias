<?php
$category = $_GET["category"];
if (!isset($category)) {
    header("Location: index.php");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Lyda </title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <?php
    $selected_ingredient = 0;
    $selected_difficulty = 0;
    ?>


    <!-- Navigation-->
    <?php
    require "require/navbar.php";
    ?>
    <!-- telos navigation -->

    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-2 ">
            <div class="text-center text-white">
                <?php
                if ($category == "Αλμυρό") {

                    echo "<h1 class='display-4 fw-bolder'>Αλμυρές συνταγές</h1>";
                    echo "<p class='lead fw-normal text-white-50 mb-0'>Τι φαγητό θα φτιάξουμε σήμερα;</p>";
                } else {
                    echo "<h1 class='display-4 fw-bolder'>Γλυκιές συνταγές</h1>";
                    echo "<p class='lead fw-normal text-white-50 mb-0'>Τι γλυκό θα φτιάξουμε σήμερα;</p>";
                }
                ?>



            </div>
        </div>
    </header>


    <!---main section-->
    <div class="d-flex container-fluid p-5 row">

        <div class="col-lg-3" style="margin-top: 2em; ">

            <form method="post">

                <!--Dropdown difficulty-->
                <div class="card d-flex flex-row mb-4 row">
                    <div class=" border-primary col-6">
                        <select name="difficulty" class="form-select ">
                            <option value="">Όλες οι δυσκολίες</option>
                            <option value="'Εύκολη'">Εύκολες</option>
                            <option value="'Μεσαία'">Μεσαίες</option>
                            <option value="'Δύσκολη'">Δυσκολες</option>
                        </select>
                    </div>
                    <div class="col-6">
                        <button type="submit" name="submit" value="submit" class="btn  btn-outline-dark">Αναζήτηση</button>

                    </div>



                </div>



                <!--Check ylika-->
                <div class="card mb-4 row">
                    <div class="card-header">Υλικά</div>
                    <div class="card-body">
                        <div class="">
                            <div class="col-sm-12 d-flex flex-wrap ">



                                <div class='form-check m-2'>
                                    <input class='form-check-input' type='radio' value='' id='0' name='ingredient' checked>
                                    <label class='form-check-label' for='0'>Ολα τα υλικά</label>
                                </div>


                                <?php
                                include "connect_MAOY.php";
                                $sql_ingredients = "SELECT * FROM ingredients";
                                $result_ingredients = mysqli_query($conn, $sql_ingredients);


                                while ($row_ingredients = mysqli_fetch_assoc($result_ingredients)) {
                                    echo "<div class='form-check m-2'>
                              <input class='form-check-input' type='radio' value='" . $row_ingredients["ingredient_id"] . "' id='" . $row_ingredients["ingredient_id"] . "' name='ingredient'>
                              <label class='form-check-label' for='" . $row_ingredients["ingredient_id"] . "'>" . $row_ingredients["title"] . " </label>
                          </div>
                          ";
                                }
                                ?>

                            </div>
                        </div>
                    </div>
                </div>


            </form>

            <?php
            if (isset($_POST['submit'])) {
                $selected_ingredient = $_POST["ingredient"];
                $selected_difficulty = $_POST["difficulty"];
            }
            ?>


        </div>


        <!-- sydages section-->
        <section class="py-5 col-9">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row p-5">


                    <?php
                    $category = $_GET['category'];




                    require "connect_MAOY.php";
                    require "require/recipe_card.php";

                    $diff_filter = "";
                    if ($selected_difficulty == "") {

                        $diff_filter = "";
                    } elseif ($selected_difficulty != 0) {
                        $diff_filter = "and difficulty =" . $selected_difficulty;
                        $lol =  '<h5 class="m-2">Συνταγές με βαθμό δυσκολίας: "' . $selected_difficulty . ' "</h5>';
                    }



                    if ($selected_ingredient > 0) {


                        //apo ton pinaka pou ennwnei recipes kai ingredients, dialegoume ta recipe id's pou exoun sysxetistei me to ingredient id
                        $find_recipe_ingredient = "SELECT * FROM recipes_ingredients WHERE ingredient_id = $selected_ingredient";

                        //edw vrhskoume to onoma tou ignredient gia na to tuposoume
                        $find_ingredient_name = "SELECT * FROM ingredients WHERE ingredient_id = $selected_ingredient";

                        //to querry pou tha vrei ta recipe id pou exoun to igredient
                        $recipes_with_ingredient_querry = mysqli_query($conn, $find_recipe_ingredient);

                        //to querry pou tha vrei to onoma tou ingredient me to id tou
                        $ingredient_name_sql = mysqli_query($conn, $find_ingredient_name);


                        //to ingredient name
                        $ingredient_name = mysqli_fetch_assoc($ingredient_name_sql);


                        // print to ingredient name
                        if ($diff_filter == "") {
                            echo "<h5 class='m-2'>Συνταγές με: " . $ingredient_name['title'] . "</h5>";
                        } else {
                            echo "<h5 class='m-2'>Συνταγές με: " . $ingredient_name['title'] . " και βαθμό δυσκολίας: " . $selected_difficulty . "</h5>";
                        }




                        //while loop pou tha trexei gia kathe recepie pou exei mesa to ingredient
                        while ($row_recipes_with_ingredient = mysqli_fetch_assoc($recipes_with_ingredient_querry)) {


                            //apomononoume apo to row mono to recepie id se mia metavlhth
                            $recipe_id = $row_recipes_with_ingredient['recipe_id'];


                            //entolh pou tha vrei apo ton pinaka twn recipes afto me to id pou vrhkame apo panw
                            $find_recipe_with_id_sql = "SELECT * FROM recipes WHERE recipe_id = $recipe_id and category = '" . $category . "' " . $diff_filter . " ";

                            //to querry gia thn apo panw entolh
                            $recipe = mysqli_query($conn, $find_recipe_with_id_sql);




                            // while loop pou tha trexei gia kathe recipe me to id pou vrhkame parapanw (mono mia fora dld alla to evala se loop gt alliws evgaze error)
                            while ($recipe_fetch = mysqli_fetch_assoc($recipe)) {
                                //fucntion pou tupwnei karta
                                single_card_function($recipe_fetch);
                            };
                        };
                    } else {

                        if ($diff_filter != "") {
                            echo "<h5 class='m-2'>Συνταγές με βαθμό δυσκολίας: " . $selected_difficulty . "</h5>";
                        }
                        //entolh..
                        $find_recipe_with_id_sql = "SELECT * FROM recipes WHERE category = '" . $category . "' " . $diff_filter . " ";


                        //querry
                        $recipe = mysqli_query($conn, $find_recipe_with_id_sql);


                        //while loop while loop pou tha printarei oles ta recipes
                        while ($recipe_fetch = mysqli_fetch_assoc($recipe)) {

                            //fucntion pou tupwnei karta
                            single_card_function($recipe_fetch);
                        };
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