<?php
require('diemsothich.php');
require('diemdaotao.php');
require('tinhkhoangcach.php');
function getThongTinNganh($conn,$query,$sothich,$hedaotao,$diachi,$hocphi){
    $items= array();
    $sql = mysqli_query($conn, $query);
    while($res = mysqli_fetch_array($sql)){
        $query2 = 'select * from diemchuan where id_nganh ='.$res['id_nganh'].' order by nam';
        $query3 = 'select ten from truong where id_truong ='.$res['id_truong'].' limit 1';
        $resTruong = mysqli_fetch_array(mysqli_query($conn,$query3));
        $diemst = getDiemSoThich($conn,$res['id_nganh'],$sothich);
        $diemdt = getDiemDaoTao($conn,$hedaotao,$res['hedaotao']);
        $khoangcach = tinhKhoangCach($conn,$diachi,$res['id_truong']);
        $item = array(
            'tenTruong' => $resTruong['ten'],
            'tenNganh' => $res['ten'],
            'hocphi' => $res['hocphi'] - $hocphi,
            'id_nganh' => $res['id_nganh'],
            'sothich' => $diemst,
            'daotao' => $diemdt,
            'khoangcach' => $khoangcach
        );
        $i = 0;

        $sql2 = mysqli_query($conn, $query2);
        while($resDiem = mysqli_fetch_array($sql2)){
            if($i==0)
            $item['2016'] = $resDiem['diem'];
            if($i==1)
            $item['2017'] = $resDiem['diem'];
            if($i==2)
            $item['2018'] = $resDiem['diem'];
            $i++;
        }
        
        array_push($items, $item);
    }
    return $items;       
}
?>