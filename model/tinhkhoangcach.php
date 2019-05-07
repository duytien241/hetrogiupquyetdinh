<?php
    function tinhKhoangCach($conn,$diachi,$idtruong){
        $items= array();
        $query = "select a.khoangcach FROM khoangcach as a, truong as b WHERE  b.diachi = a.diachi2 and a.diachi1 ='".$diachi."' and b.id_truong =".$idtruong ;
        $sql = mysqli_query($conn, $query);
        while($res = mysqli_fetch_array ($sql))
        return 1/$res['khoangcach'];
    }
?>