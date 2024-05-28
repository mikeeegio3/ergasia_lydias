<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <?php

    require "connect_MAOY.php";
    require "require/info_carousel.php";
    $recipe_id = $_GET['recipe_id'];
    $recipe_info_sql = "SELECT * FROM recipes WHERE recipe_id = $recipe_id";
    $recipe = mysqli_query($conn, $recipe_info_sql);
    $row = mysqli_fetch_assoc($recipe);

    echo "
      <title>" . $row["title"] . "</title>
    ";
    ?>
</head>

<body>
    <!-- Navigation-->
    <?php
    require "require/navbar.php"
    ?>
    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-2 ">
            <div class="text-center text-white">

                <?php
                $recipe_info_sql = "SELECT * FROM recipes WHERE recipe_id = $recipe_id";
                $recipe = mysqli_query($conn, $recipe_info_sql);
                $row = mysqli_fetch_assoc($recipe);

                echo "
                    
                    <h1 class='display-4 fw-bolder text-capitalize'>" . $row['title'] . "!</h1>
                   

                ";
                ?>

                
                <p class="lead fw-normal text-white-50 mb-0">Δες τη συνταγή...</p>
            </div>
        </div>
    </header>
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">

            <?php
            $recipe_info_sql = "SELECT * FROM recipes WHERE recipe_id = $recipe_id";
            $recipe = mysqli_query($conn, $recipe_info_sql);
            $row = mysqli_fetch_assoc($recipe);

            info_carousel($row);
            
            ?>


            <!--Sokolatopita info-->
            <div class="gx-lg-2 ">
                <div class="card h-100">
                    <div class="d-flex" id="wrapper">
                        <!-- Ingredients-->
                        <div style="margin-top: 2em;">
                            <div class="card-body p-4">
                                <div class="text card row p-4">
                                    <div class="row" style="min-width: 15rem;">
                                        <h4 class="fw-bolder mb-3">Συστατικά</h4>
                                        <ul>
                                            <?php
                                            
                                            $recipe_info_sql = "SELECT * FROM recipes_ingredients WHERE recipe_id = $recipe_id";
                                            $all_ingredients_querry = mysqli_query($conn, $recipe_info_sql);
                                            $ingredient_id_fetch = mysqli_fetch_assoc($all_ingredients_querry);


                                            while ($ingredient_id_fetch = mysqli_fetch_assoc($all_ingredients_querry)) {
                                                $one_ing = $ingredient_id_fetch['ingredient_id'];
                                                $find_ing_sql = "SELECT * FROM ingredients WHERE ingredient_id = $one_ing";
                                                $find_ing_querry = mysqli_query($conn, $find_ing_sql);

                                                while ($find_ing_fetch = mysqli_fetch_assoc($find_ing_querry)) {
                                                    echo "
                                                        
                                                    <li>" . $find_ing_fetch['title'] . "</li>
                                                        
                                                    ";
                                                }
                                            }


                                            ?>

                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Ektelesi-->
                        <div style="margin-top: 2em;">
                            <div class="card-body p-4">
                                <div class="text">
                                    <div class="row">
                                        <h5 class="fw-bolder text-center">Εκτέλεση</h5>

                                        <?php
                                        $recipe_info_sql = "SELECT * FROM recipes WHERE recipe_id = $recipe_id";
                                        $recipe = mysqli_query($conn, $recipe_info_sql);
                                        $row = mysqli_fetch_assoc($recipe);

                                        echo "
                                            <h2 class='mb-5'>Περιγραφή</h2>
                                            <p class='fs-5'>" . $row['description'] . "</p>
                                            ";
                                        ?>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Like/dislike-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent text-center">
                        <button class="btn btn-outline-dark mt-auto " onclick="heartBtn()" style="top: 0.5rem; right: 0.5rem">
                            <div class="heart-empty bi-suit-heart-fill" id="heart"> Like</div>
                        </button>
                    </div>

                    <script type="text/javascript">
                        var btn = document.getElementById("heart");
                        function heartBtn(){
                            if(btn.classList.contains("heart-empty")){
                                btn.classList.remove("heart-empty");
                                btn.classList.add("heart-full");
                            }else{
                                btn.classList.remove("heart-full");
                                btn.classList.add("heart-empty");
                            }
                        }
                    </script>


                </div>
            </div>
        </div>
    </section>


    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <?php require "require/footer.php"; ?>       
    </footer>
    <!--End of footer-->

   
</body>

</html>