<?php
include("connect.php");
?>

<!DOCTYPE html>
<html lang="lt">

<head>
    <title>Kursai</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <script src="js/script.js"></script>
    <link href="css/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo:wght@100;200;400;500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/7b34a7be43.js" crossorigin="anonymous"></script>
</head>

<body>
    <header>
        <nav>
            <img class="nav-img" src="img/logo.png" alt="logo">
        </nav>
    </header>
    <section>
        <div class="album py-5 bg-light">

            <div class="container">
                <h2>Naujausi kursai</h2>
                <div class='row tags m-2'>
                </div>
                <div class="row">
                    <?php
                    $courses = mysqli_query($connection, "SELECT * FROM course");
                    foreach ($courses as $course) {
                        $course_id = $course['id'];
                    ?>
                        <div class="col-md-4">
                            <div class="card mb-4 shadow-sm" data-type="V">
                                <?php
                                echo "<img src=\"" . $course['image'] . "\" class=\"card-img-top\" alt=\"" . $course['course_name'] . "\">";
                                ?>
                                <div class="card-body">
                                    <?php
                                    echo "<h5 class=\"card-title\"><a href=\"#\">" . $course['course_name'] . "</a></h5>";
                                    echo "<p class=\"text-muted\">" . $course['name'] . $course['surname'] . "</p>";
                                    echo "<p class=\"card-text\">";
                                    echo "<hr>" . $course['short_description'] . "<hr>";
                                    echo "</p>";
                                    ?>
                                </div>
                                <div class="card-text bottom-card-icons">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span class="bottom-card-stars">
                                                <form class="rating-form">
                                                    <?php
                                                    $rating_result = mysqli_query($connection, "SELECT * FROM rating WHERE course_id = $course_id");
                                                    $rating = 0;
                                                    foreach ($rating_result as $rate) {
                                                        $rating += $rate['rating'];
                                                    }
                                                    $rating_count = $rating_result->num_rows;
                                                    if ($rating_count <= 0) {
                                                        echo $rating;
                                                    } else {
                                                        echo $rating / $rating_count;
                                                    }
                                                    ?>

                                                    <input type="radio" id="star1" name="rating" value="1" <?php echo ($rating==1)?'checked':'' ?> />
                                                    <label for="star1" title="text"><i class="fas fa-star"></i></label>
                                                    <input type="radio" id="star2" name="rating" value="2" <?php echo ($rating==2)?'checked':'' ?> />
                                                    <label for="star2" title="text"><i class="fas fa-star"></i></label>
                                                    <input type="radio" id="star3" name="rating" value="3" <?php echo ($rating==3)?'checked':'' ?> />
                                                    <label for="star3" title="text"><i class="fas fa-star"></i></label>
                                                    <input type="radio" id="star4" name="rating" value="4" <?php echo ($rating==4)?'checked':'' ?> />
                                                    <label for="star4" title="text"><i class="fas fa-star"></i></label>
                                                    <input type="radio" id="star5" name="rating" value="5" <?php echo ($rating==5)?'checked':'' ?> />
                                                    <label for="star5" title="text"><i class="fas fa-star"></i></label>
                                                </form>
                                            </span>
                                        </div>
                                        <div class="col-md-3 offset-md-3">
                                            <i class="fas fa-comments"></i>
                                            <?php
                                            $comment_count_result = mysqli_query($connection, "SELECT count(*) FROM comments WHERE course_id = $course_id");
                                            $comment_count = $comment_count_result->fetch_row();
                                            echo $comment_count[0];
                                            ?>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    <?php
                    }
                    ?>

    </section>
    <section class="form">
        <div class="album py-5 bg-light">
            <div class="container">
                <form id="course-form" onsubmit="validateForm(); return false;">
                    <h2>Sekite naujienas</h2>
                    <p>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</p>
                    <div id="success-message">
                        <p class="message-form">Sėkmingai užpildėte</p>
                    </div>
                    <div class="form-group bg-light">
                        <label for="name">Vardas</label>
                        <input type="text" class="form-control" id="name" aria-describedby="name">
                    </div>
                    <div class="form-group">
                        <label for="email">El. paštas</label>
                        <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
                    </div>
                    <input type="submit" value="Užsisakyti" name="sub" class="btn btn-primary" />
                </form>
            </div>
        </div>
    </section>
    <footer>
        <div class="album py-5 bg-light">
            <div class="container">
                <hr>
                <p>© Ieva Markūnaitė</p>
            </div>
        </div>
    </footer>
</body>

</html>