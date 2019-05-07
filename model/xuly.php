<?php
    require('connectDB.php');
    require('thongtintruong.php');
    // lấy giá trị từ form trả về
    $diemthi = $_POST['diemthi'];
    $khoi = $_POST['khoi'];
    $sothich = $_POST['sothich'];
    $trongsost = $_POST['trongsost'];
    $diachi = $_POST['diachi'];
    $trongsodc = $_POST['trongsodc'];
    $hedaotao = $_POST['hedaotao'];
    $trongsodt = $_POST['trongsodt'];
    $hocphi = $_POST['hocphi'];
    $trongsohp = $_POST['trongsohp'];
    // set các giá trị trọng số mặc định
    $tssothich = 0.2;
    $tsnam2016 = 0.15;
    $tsnam2017 = 0.15;
    $tsnam2018 = 0.15;
    $tsdiachi = 0.1;
    $tshocphi = 0.1;
    $tshedaotao = 0.15;

    $query = "select distinct a.* from nganh as a, diemchuan as b where a.id_nganh = b.id_nganh and b.khoi like '%".$khoi."%'";
    //st = 0.2
    if($trongsost ==4){
        $query = $query ." and mota = '".$sothich."'";
        $tssothich =0;
        $tsnam2018 += 0.1;
        $tsnam2017 += 0.05;
        $tsnam2016 +=0.05;
    }
    elseif($trongsost <= 2){
        $tssothich -= (3-$trongsost)*0.05;
        if($trongsost <=2) $tsnam2018 += 0.05;
        if($trongsost <=1) $tsnam2017 += 0.05;
        if($trongsost <=0) $tsnam2016 += 0.05;
    }
    //0.15
    
    if($trongsodt ==4){
        $query = $query ." and hedaotao = '".$hedaotao."'";
        $hedaotao = 0;
    }
    elseif($trongsodt <=2){
        
        $tshedaotao -= (3-$trongsodt)*0.05;
        if($trongsost == 4 || $trongsost ==0){
            if($trongsodt ==2){
                $tsnam2018 += 0.05;     //0.15
            }
            elseif($trongsodt ==1) {
                $tsnam2018 += 0.05;
                $tsnam2017 += 0.05;
                
            }
            else {
                $tsnam2018 += 0.05;
                $tsnam2017 += 0.05;
                $tsnam2016 +=0.05;
            }
        }
        else{
            if($tssothich != 0)
            $tssothich+=(3-$trongsodt)*0.05;
            
        }
    }
    if($trongsodc == 0 ){
        if($tssothich != 0)
        $tssothich += $tsdiachi;
        else {
            $tsnam2018 += 0.05;
            $tsnam2017 += 0.05;
            $tsnam2016 += 0.05;
        }
        $tsdiachi = 0;
    }
    elseif( $trongsodc == 1){
        $tsdiachi -= 0.05;
        if($tssothich !=0 )
        $tssothich += 0.05;
        else $tsnam2018 +=0.05;
    }
    if($trongsohp >= 3 ){
        $tshocphi += 0.05;
        if($tshedaotao !=0)
        $tshedaotao -= 0.05;
        else 
        $tsnam2016 -= 0.05;
    }
    elseif($trongsohp == 0){
        $tshocphi =0;
        $tsnam2018 += 0.05;
        $tsnam2017 +=0.05;
        
    }
    elseif($trongsohp == 1){
        $tshocphi = 0.05;
        $tsnam2018 += 0.05;
    }
    $trongso = array($tssothich,$tsnam2016,$tsnam2017,$tsnam2018,$tsdiachi,$tshedaotao,$tshocphi);
    $_SESSION['trongso'] = $trongso;
    // echo '\so thich:'.$tssothich . ';';
    // echo '\2018:'.$tsnam2018. ';';
    // echo '\2017:'.$tsnam2017. ';';
    // echo '\2016:'.$tsnam2016. ';';
    // echo '\diachi:'.$tsdiachi. ';';
    // echo '\hp:'.$tshocphi. ';';
    // echo '\daotao:'.$tshedaotao. ';';
    // echo $tssothich + $tsnam2018 + $tsnam2017 + $tsnam2016 + $tsdiachi +$tshocphi + $tshedaotao;
    $conn = connectDB();
    session_start();
    $matrix = getThongTinNganh($conn,$query,$sothich,$hedaotao,$diachi,$hocphi);
    for($i = 0 ; $i < sizeof($matrix);$i++){

        $matrix[$i]['2016'] = ChuanHoaDiem($diemthi,$matrix[$i]['2016']);
        $matrix[$i]['2017'] = ChuanHoaDiem($diemthi,$matrix[$i]['2017']);
        $matrix[$i]['2018'] = ChuanHoaDiem($diemthi,$matrix[$i]['2018']);
        
    }
    
    
    
    ChuanHoaTopsis($matrix);
    
    function ChuanHoaTopsis($matrix){
        $topsis = $matrix;
        GLOBAL $tssothich ;
        GLOBAL $tsnam2016 ;
        GLOBAL $tsnam2017 ;
        GLOBAL $tsnam2018 ;
        GLOBAL $tsdiachi ;
        GLOBAL $tshocphi ;
        GLOBAL $tshedaotao ;
        $tmp = array(TinhTongCot($matrix,'sothich'),TinhTongCot($matrix,'2016'),TinhTongCot($matrix,'2017'),TinhTongCot($matrix,'2018'),TinhTongCot($matrix,'daotao'),TinhTongCot($matrix,'khoangcach'),TinhTongCot($matrix,'hocphi'));
        // chuẩn hóa giá trị về miền [0,1]
        for($i = 0 ; $i < sizeof($matrix);$i++){
            $matrix[$i]['sothich'] /= sqrt($tmp[0]);
            $matrix[$i]['2016'] /= sqrt($tmp[1]);
            $matrix[$i]['2017'] /= sqrt($tmp[2]);
            $matrix[$i]['2018'] /= sqrt($tmp[3]);
            if($tmp[4] !=0)
            $matrix[$i]['daotao'] /= sqrt($tmp[4]);
            else $matrix[$i]['daotao'] = 0;
            $matrix[$i]['khoangcach'] /= sqrt($tmp[5]);
            if($tmp[6]==0) $matrix[$i]['hocphi'] =0;
            else $matrix[$i]['hocphi'] /= sqrt($tmp[6]);
            
        }
        // Nhân trọng số. làm ra cho dễ hiểu chứ nhân luôn bước trên cũng được
        
        for($i = 0 ; $i < sizeof($matrix);$i++){
            $matrix[$i]['sothich'] *= $tssothich;
            $matrix[$i]['2016'] *= $tsnam2016;
            $matrix[$i]['2017'] *= $tsnam2017;
            $matrix[$i]['2018'] *= $tsnam2018;
            $matrix[$i]['daotao'] *= $tshedaotao;
            $matrix[$i]['khoangcach'] *= $tsdiachi;
            $matrix[$i]['hocphi'] *= $tshocphi;
            
        }
        // tính max min
        $max = array(LayGiaTriLon($matrix,'sothich'),LayGiaTriLon($matrix,'2016'),LayGiaTriLon($matrix,'2017'),LayGiaTriLon($matrix,'2018'),LayGiaTriLon($matrix,'daotao'),LayGiaTriLon($matrix,'khoangcach'),LayGiaTriLon($matrix,'hocphi'));
        $min = array(LayGiaTriNho($matrix,'sothich'),LayGiaTriNho($matrix,'2016'),LayGiaTriNho($matrix,'2017'),LayGiaTriNho($matrix,'2018'),LayGiaTriNho($matrix,'daotao'),LayGiaTriNho($matrix,'khoangcach'),LayGiaTriNho($matrix,'hocphi'));
        $kcmax = array();
        $kcmin = array();
        for( $i = 0 ; $i< sizeof($matrix); $i++){
            array_push($kcmax,TinhKhoangCachpp($max,$matrix[$i]));
            array_push($kcmin,TinhKhoangCachpp($min,$matrix[$i]));
        }
        for( $i = 0 ; $i< sizeof($matrix); $i++){
            $matrix[$i]['dodo'] = $kcmin[$i]/($kcmax[$i]+$kcmin[$i]);
        }
        $_SESSION['max'] =$max;
        $_SESSION['min'] =$min;
        usort($matrix, function($a, $b) {
            return $b['dodo']  <=> $a['dodo'];
        });
        $_SESSION['matrix'] = $matrix;
        header('Location:../view/ketqua.php');

    }
    
    function TinhKhoangCachpp($arrlt,$row){
        $x =0 ;
        $x +=($arrlt[0]-$row['sothich'])*($arrlt[0]-$row['sothich']);
        $x +=($arrlt[1]-$row['2016'])*($arrlt[1]-$row['2016']);
        $x +=($arrlt[2]-$row['2017'])*($arrlt[2]-$row['2017']);
        $x +=($arrlt[3]-$row['2018'])*($arrlt[3]-$row['2018']);
        $x +=($arrlt[4]-$row['daotao'])*($arrlt[4]-$row['daotao']);
        $x +=($arrlt[5]-$row['khoangcach'])*($arrlt[5]-$row['khoangcach']);
        $x +=($arrlt[6]-$row['hocphi'])*($arrlt[6]-$row['hocphi']);
        return sqrt($x);
    }
    
    function ChuanHoaDiem(float $diemhs, float $diemcu){
        $tmp = $diemhs - $diemcu;
        if($tmp > 0 ) return 10 - ($tmp / 15) * 10;
        if($tmp == 0) return 10;
        return 10 + ($tmp / 15) * 10;
    }
    function LayGiaTriNho($arr,$i){
        $min = $arr[0][$i];
        for( $t = 0 ; $t< sizeof($arr); $t++){
            if($arr[$t][$i] < $min){
                $min = $arr[$t][$i];
            }
        }
        return $min;
    }
    function LayGiaTriLon($arr,$i){
        $max = $arr[0][$i];
        for( $t = 1 ; $t< sizeof($arr); $t++){
            if($arr[$t][$i] > $max){
                $max = $arr[$t][$i];
            }
        }
        return $max;
    }
    function TinhTongCot($arr,$i){
        $res = 0;
        for( $t = 0 ; $t< sizeof($arr); $t++){
            
            $res += $arr[$t][$i]*$arr[$t][$i];
            
        }
        return $res;
    }
    
?>