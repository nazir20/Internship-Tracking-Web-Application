<?php
session_start();

if(isset($_POST['teacher-login-btn'])){

    $teacher_number =  $_POST['teacher-number'];
    $teacher_password = $_POST['teacher-password'];

    $connection = mysqli_connect('localhost','root','','yazgeldb');
    $sql = "SELECT * FROM teacher WHERE ogretmen_okul_no = '$teacher_number' and role='ogretmen'";
    $result = mysqli_query($connection, $sql);
    $num_of_row = mysqli_num_rows($result);

    if($num_of_row < 1){
        $_SESSION['t_message'] = 'Kullanıcı Bulunamadı!';
        header('Location: ../teacher_login.php?error=no-user-found');
        exit();
    }else{
        while($row = mysqli_fetch_assoc($result)){
            if(md5($teacher_password) != $row['ogretmen_password']){
                $_SESSION['t_message'] = 'Girdiğiniz Parola Hatalıdır';
                header('Location: ../teacher_login.php?error=wrong-password');
                exit();
            }else{
                session_start();
                $_SESSION['teacher_id'] = $row['ogretmen_id'];
                $_SESSION['teacher_name'] = $row['ogretmen_ad_soyad'];
                $_SESSION['teacher_number'] = $row['ogretmen_okul_no'];
                header('location: ../Teacher/dashboard/index.php?teacher-login=success');
                exit();
            }
        }
    }

}