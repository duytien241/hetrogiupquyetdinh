<?php
    function getDiemDaoTao($conn,$hedt1,$hedt2){
        $items= array();
        $query = "select diem from trongsodt where hedt1 = '".$hedt1."' and hedt2 = '".$hedt2."' limit 1";
        $sql = mysqli_query($conn, $query);
        while($res = mysqli_fetch_array ($sql))
        return $res['diem'];
    }
?>