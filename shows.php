<?php
    require_once("includes/header.php");

    $prevew = new PreviewProvider($con, $userLoggedIn);
    echo $prevew->createTVShowPreviewVideo();
    $con = new CategoryConatiners($con, $userLoggedIn);
    echo $containers->showTVShowCategories();
    

?>