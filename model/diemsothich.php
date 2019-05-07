<?php
    function getDiemSoThich($conn,$id_nganh,$sothich){
        $query = 'select a.* from nganh_sothich as a,so_thich as b where a.id_sothich = b.id and a.id_nganh ='.$id_nganh." and b.name= '".$sothich."' limit 1";
        $sql = mysqli_query($conn, $query);
        while($res = mysqli_fetch_array($sql))
        return $res['diem'];
    }
?>