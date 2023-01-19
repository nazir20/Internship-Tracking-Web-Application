<?php
session_start();
if(isset($_POST['commission-login-btn'])){

    $commission_number =  $_POST['commission_number'];
    $commission_password = $_POST['commission_password'];

    $connection = mysqli_connect('localhost','root','','yazgeldb');
    $sql = "SELECT * FROM teacher WHERE ogretmen_okul_no = '$commission_number' and role='komisyon'";
    $result = mysqli_query($connection, $sql);
    $num_of_row = mysqli_num_rows($result);

    if($num_of_row < 1){
        $_SESSION['c_message'] = 'Kullanıcı Bulunamadı!';
        header('Location: ../commission_login.php?error=no-user-found');
        exit();
    }else{
        while($row = mysqli_fetch_assoc($result)){
            if(md5($commission_password) != $row['ogretmen_password']){
                $_SESSION['c_message'] = 'Girdiğiniz Parola Hatalıdır';
                header('Location: ../commission_login.php?error=wrong-password');
                exit();
            }else{
                session_start();
                $_SESSION['commission_id'] = $row['ogretmen_id'];
                $_SESSION['commission_name'] = $row['ogretmen_ad_soyad'];
                $_SESSION['commission_number'] = $row['ogretmen_okul_no'];
                header('location: ../Commission/dashboard/index.php?commission-login=success');
                exit();
            }
        }
    }

}