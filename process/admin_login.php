<?php

if(isset($_POST['admin-sign-in-btn'])){

    $admin_email = $_POST['admin_email'];
    $admin_password = $_POST['admin_password'];

    include '../Admin/dashboard/Backend/Admin/admin_login.php';
    include '../Admin/dashboard/Backend/Admin/admin_login_contr.php';
    
    $login = new AdminLoginContr($admin_email, $admin_password);
    $login->loginAdmin();
    header('location: ../Admin/Dashboard/index.php?login=success');
    exit();
}
