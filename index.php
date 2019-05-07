<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Lab6</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet"/>
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
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Nhóm 4</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">Trang chủ</a>
                </li>
                <li>
                    <a href="">Điểm chuẩn</a>
                </li>
                <!-- <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li> -->
            </ul>
        </div>
    </nav>

    <div class="container" style="min-height:900px;">
        <div class="row text-center">
            <h1>
                <strong>Hệ trợ giúp quyết định chọn ngành</strong>
            </h1>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <br>
        </div>
        <div id="client-input" style="margin-top:50px">
            <form action="./model/xuly.php" method = "Post" class="col-sm-8 col-sm-offset-2">
                <div class="form-group row">
                    <div class="col-sm-2">
                        <label for="">Khối xét tuyển</label>
                    </div>
                    <div class="col-sm-10">
                        <select name="khoi" id="" class="form-control">
                           
                            <?php
                            require('./model/connectDB.php');
                            require('./model/sothich.php');
                            $conn = connectDB();
                            $listKhoi = getKhoi($conn);
                            $list = array();
                            foreach($listKhoi as $i){
                                $tmp = explode(',',$i['khoi']);
                                foreach($tmp as $k){
                                    if(!in_array($k,$list)){
                                        array_push($list,$k);
                                    }
                                }
                            }
                            for($i = 0 ; $i < sizeof($list); $i ++){
                                echo '<option value="'.$list[$i].'">'.$list[$i].'</option>';
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-2">
                        <label for="">Điểm thi</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" name="diemthi" id="" placeholder="Hãy nhập tổng điểm xét tuyển (đã bao gồm điểm ưu tiên)" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-2">
                        <label for="">Sở thích</label>
                    </div>
                    <div class="col-sm-4">
                        <select name="sothich" id="sothich" class="form-control">
                        <?php
                        $conn = connectDB();
                        $arr = getSoThich($conn);
                        for($i = 0 ; $i < sizeof($arr); $i++){
                                echo'<option name="sothich" value="'.$arr[$i]['name'].'">'.$arr[$i]['name'].'</option>';

                        }
                        ?>
                    </select>
                    </div>
                    <div class="col-sm-3">
                        <label for="">Mức độ</label>
                    </div>
                    <div class="col-sm-3">
                        <select name="trongsost" id="trongsost" class="form-control">
                            <option name="trongsost" value="0">Không quan trọng</option>
                            <option name="trongsost" value="1">Thấp</option>
                            <option name="trongsost" value="2">Trung bình</option>
                            <option name="trongsost" value="3">Cao</option>
                            <option name="trongsost" value="4">Cực kỳ cao</option>
                            
                        </select>

                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-2">
                        <label for="">Địa Chỉ</label>
                    </div>
                    <div class="col-sm-4">
                        <input type="text" name="diachi" id="" placeholder="Hãy nhập địa chỉ của bạn" class="form-control">
                    </div>
                    <div class="col-sm-3">
                        <label for="">Bạn có ngại đi xa?</label>
                    </div>
                    <div class="col-sm-3">
                        <select name="trongsodc" id="trongsodc" class="form-control">
                            <option name="trongsodc" value="1">Không quan trọng</option>
                            <option name="trongsodc" value="1">Thấp</option>
                            <option name="trongsodc" value="2">Trung bình</option>
                            <option name="trongsodc" value="3">Cao</option>
                            <option name="trongsodc" value="4">Cực kỳ cao</option>
                        </select>

                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-2">
                        <label for="">Hệ đào tạo</label>
                    </div>
                    <div class="col-sm-4">
                        <select name="hedaotao" id="hedaotao" class="form-control">
                        <?php
                        
                        $conn = connectDB();
                        $arr = gethedaotao($conn);
                        for($i = 0 ; $i < sizeof($arr); $i++){
                                echo'<option value="'.$arr[$i]['hedaotao'].'">'.$arr[$i]['hedaotao'].'</option>';

                        }
                        ?>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <label for="">Mức độ</label>
                    </div>
                    <div class="col-sm-3">
                        <select name="trongsodt" id="trongsodt" class="form-control">
                            <option name="trongsodt" value="0">Không quan trọng</option>
                            <option name="trongsodt" value="1">Thấp</option>
                            <option name="trongsodt" value="2">Trung bình</option>
                            <option name="trongsodt" value="3">Cao</option>
                            <option name="trongsodt" value="4">Cực kỳ cao</option>
                            
                        </select>

                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-2">
                        <label for="">Học phí</label>
                    </div>
                    <div class="col-sm-4">
                    <input type="text" name="hocphi" id="" placeholder="Học phí bạn mong muốn 1 kỳ" class="form-control">
                    </div>
                    <div class="col-sm-3">
                        <label for="">Mức độ</label>
                    </div>
                    <div class="col-sm-3">
                        <select name="trongsohp" id="trongsohp" class="form-control">
                            <option name="trongsohp" value="0">Không quan trọng</option>
                            <option name="trongsohp" value="1">Thấp</option>
                            <option name="trongsohp" value="2">Trung bình</option>
                            <option name="trongsohp" value="3">Cao</option>
                            <option name="trongsohp" value="4">Cực kỳ cao</option>
                            
                        </select>

                    </div>
                </div>
                <!-- <div class="form-group row">
          <div class="col-sm-2">
            <label for="">Điểm ưu tiên</label>
          </div>
          <div class="col-sm-8">
            <input type="text" name="" id="" class="form-control" placeholder="Hãy nhập điểm ư">
          </div>
        </div> -->

                <div class="form-group row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8 text-center">
                        <input type="submit" name="" id="btn-result" class="btn btn-info" value="Xin trợ giúp">
                    </div>
                </div>

            </form>
        </div>
    

    </div>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/index.js"></script>
</body>
</html>