<?php
    require_once '../services/conexion.php';
    if (isset($_POST['categoria'])) {
        $localizaciones=$pdo->prepare("SELECT * FROM tbl_churreria where categoria like '%{$_POST['categoria']}%'");
    }else{
        $localizaciones=$pdo->prepare("SELECT * FROM tbl_churreria");
    }
    $localizaciones->execute();
    $localizaciones=$localizaciones->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($localizaciones);
?>