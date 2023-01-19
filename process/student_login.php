<?php

if(isset($_POST['student_login_btn'])){

    $student_number = $_POST['student_number'];
    $student_password = $_POST['student_password'];

    include '../Student/dashboard/Backend/student_login.php';
    include '../Student/dashboard/Backend/student_login_contr.php';
    
    $login = new StudentLoginContr($student_number, $student_password);
    $login->loginStudent();
    header('location: ../Student/Dashboard/index.php?login=success');
    exit();
}