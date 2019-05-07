<?php
    
    function getSoThich($conn){
        $items= array();
        $query = 'select * from so_thich  ';
        $sql = mysqli_query($conn, $query);
        while($res = mysqli_fetch_array($sql)){
            $item = array(
                'id' => $res['id'],
                'name' => $res['name']
                );
            array_push($items, $item);
        }
        return $items;       
    }
    function gethedaotao($conn){
        $items= array();
        $query = 'select distinct hedaotao from nganh  ';
        $sql = mysqli_query($conn, $query);
        while($res = mysqli_fetch_array($sql)){
            $item = array(
                'hedaotao' => $res['hedaotao']
                );
            array_push($items, $item);
        }
        return $items;       
    }
    function getKhoi($conn){
        $items= array();
        $query = 'select distinct khoi from diemchuan  ';
        $sql = mysqli_query($conn, $query);
        while($res = mysqli_fetch_array($sql)){
            $item = array(
                'khoi' => $res['khoi']
                );
            array_push($items, $item);
        }
        return $items; 
    }
  
?>
