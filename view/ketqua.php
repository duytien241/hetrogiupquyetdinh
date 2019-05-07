<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Lab6</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <script type="text/javascript">
            function toBusiness() {
               window.location="businesses.php";
            }
            function toCategories() {
               window.location="categories.php";
            }
            function toBiz_Category() {
               window.location="biz_category.php";
            }
      </script>

</head>
<body>

<nav class="navbar navbar-default">
<div id="client-result-final" class="col-sm-8 col-sm-offset-2">
            <h1 class="text-center text-uppercase">
                <strong>Bảng kết quả</strong>
            </h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Viện</th>
                        <th>Trường</th>
                        <th>Sở Thích</th>
                        <th>Chênh lệch với 2016</th>
                        <th>Chênh lệch với 2017</th>
                        <th>Chênh lệch với 2018</th>
                        <th>Đào tạo</th>
                        <th>Khoảng cách</th>
                        <th>Học phí</th>
                        <th>Độ do</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $t=1;
                    foreach($_SESSION['matrix'] as $i){
                        echo'<tr><td>'.$t++.'</td>
                        <td>'.$i['tenNganh'].'</td>
                        <td>'.$i['tenTruong'].'</td>
                        <td>'.round($i['sothich'],3).'</td>
                        <td>'.round($i['2016'],3).'</td>
                        <td>'.round($i['2017'],3).'</td>
                        <td>'.round($i['2018'],3).'</td>
                        <td>'.round($i['daotao'],3).'</td>
                        <td>'.round($i['khoangcach'],3).'</td>
                        <td>'.round($i['hocphi'],3).'</td>
                        <td>'.round($i['dodo'],3).'</td></tr>';
                    }
                    ?>
                </tbody>
            </table>
            <div class="col-xs-12 text-center">
                <button type="button" id="btn-detail" class="btn btn-info">
                    Xem chi tiết
                  </button>
            </div>
        </div>


        <div id="detail">
            <div id="client-result-nomalize" class="col-sm-8 col-sm-offset-2">
                <h1 class="text-center text-uppercase">
                    <strong>Bảng chuẩn hóa</strong>
                </h1>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Viện</th>
                            <th>Sở thích</th>
                            <th>Chênh lệch với 2014</th>
                            <th>Chênh lệch với 2015</th>
                            <th>Chênh lệch với 2016</th>
                            <th>Chênh lệch với 2016</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        echo'<tr>';
                        foreach($_SESSION['max'] as $i){
                            echo'<td>'.$i.'</td>';
                            
                            }
                        echo '</tr>';  
                        foreach($_SESSION['min'] as $i){
                            echo'<td>'.$i.'</td>';
                            
                            }
                        echo '</tr>';    
                        ?>
                    </tbody>
                </table>
            </div>
</div>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    
</body>
</html>