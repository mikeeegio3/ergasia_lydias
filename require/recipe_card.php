<?php
function single_card_function ($x){
    echo "
    <div class='col-3 mb-5'>
    <div class='card h-100'>
        <!-- sydagi-->
        <img class='card-img-top' src='images/" . $x['thumbnail'] . ".jpg' alt='...' />
        <!-- Product details-->
        <div class='card-body p-4'>
            <div class='text-center'>
                <!-- Product name-->
                <h5 class='fw-bolder'>" . $x['title'] . "</h5>
                ";

                              // sydagh reviews
                              if ($x["rating"] == 1) {
                                  echo "
                <div class='d-flex justify-content-center small text-warning mb-2'>
                    <div class='bi-star-fill'></div>
                </div>

                ";
                              } elseif ($x["rating"] == 2) {
                                  echo "
                <div class='d-flex justify-content-center small text-warning mb-2'>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                </div>

                ";
                              } elseif ($x["rating"] == 3) {
                                  echo "
                <div class='d-flex justify-content-center small text-warning mb-2'>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                </div>

                ";
                              } elseif ($x["rating"] == 4) {
                                  echo "
                <div class='d-flex justify-content-center small text-warning mb-2'>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                </div>

                ";
                              } else {
                                  echo "
                <div class='d-flex justify-content-center small text-warning mb-2'>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                    <div class='bi-star-fill'></div>
                </div>

                ";
                              }

                              // Dificulty
                              echo "
                <span class='text-muted'>" . $x['difficulty'] . "</span>
            </div>
        </div>
        <!-- Product actions-->
        <div class='card-footer p-4 pt-0 border-top-0 bg-transparent'>
            <div class='text-center'><a class='btn btn-outline-dark mt-auto'
                    href=recipe_info.php?recipe_id=".$x['recipe_id']."     >View option!</a></div>
        </div>
    </div>
</div>
    ";

    
}
    