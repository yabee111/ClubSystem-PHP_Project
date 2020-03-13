<?php
    session_start();

    if(!isset($_SESSION["userlogin"])){
      header("Location: ../no_login/");
    }else{
      $club = $_COOKIE["club"];
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="jquery.min.js" language="javascript"></script>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <link rel="stylesheet" href="user_info.css">
  <script src="scripts/user_all.js"></script>
  <title>布告欄消息修改</title>
  <style>
      table{
        width:950px;
        margin-right: auto;
        margin-left: auto;
        margin-top: 50px;
        margin-bottom: 100px;
        border:1px solid;
        text-align: center;
        color:black;
      }
      td{
        border:1px solid;
        padding-left: 5px;
        padding:5px;
      }
      tr{
        border:1px solid;
      }
      .title{
        width:950px;
        text-align: center;
      }
      .btn{
          margin-right:20px;
          margin-top: 10px;
          font-size: 15px;
      }
      .yo{
          vertical-align: top;
          text-align: -webkit-center;
      }
      .loginout{
      position:absolute;
      z-index: 1;
      width:65px;
      margin-left: 1200px;
      margin-top: -40px;
      padding-bottom: 5px;
      font-size: 24px;
      color:white;
      border-bottom:1px solid white;
      text-align: center;
    }
  </style>
</head>
<body>
        <div class="wrap">
            <div class="top"><img src="6.png" width=1280>
            <a href="../logout.php?cookie=<?php echo $club ?>" class="loginout">登出</a>
            </div>
            <!-- 5or6的圖 -->
            <div class="head"><a name="change"></A>
            <ul class="list">
                  <li><a id="info" href="user_info.php#intro">社團資料</a>
                    <ul class="clubinfo">
                      <li><a href="user_info.php#intro">社團資料</a></li>
                      
                      <li><a href="user_staff.php#intro">社團人員</a></li>
                      <li><a href="user_staff_apply.php#intro">入社申請</a></li>
                      <li><a href="user_board.php#intro">布告欄</a></li>
                      <li><a href="user_message.php#intro">留言板</a></li>
                    </ul>
                  </li>
                  <li><a id="info" href="user_activity.php#intro">社團活動</a>
                    <ul class="clubinfo">
                      <li><a href="user_activity.php#intro">活動紀錄</a></li>
                      <li><a href="user_activity_apply.php#intro">活動申請</a></li>
                    </ul>
                  </li>
                  <li><a id="info" href="user_property.php#intro">社團財產</a>
                    <ul class="clubinfo">
                      <li><a href="user_property.php#intro">財產清單</a></li>
                      <li><a href="user_property_add.php#intro" id="addbtn">財產新增</a></li>
                      
                      </ul>
                  </li>
                  <li><a id="info" href="user_funds.php#intro">社團經費</a>
                    <ul class="clubinfo">
                      <li><a href="user_funds.php#intro">經費紀錄</a></li>
                      <li><a href="user_funds_apply.php#intro">經費申請</a></li>
                    </ul>
                  </li>
                  <li><a class="passwd" href="#" id="changepasswd">變更密碼</a></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="no"></div><a name="intro"></A>
                <div class="intro">
                  <h2 class="title">布告欄消息修改</h2><a name="intro"></A>  
                </div>
                  <div>
                  <?php
                    $no=$_GET["No"];
                    $link = @mysqli_connect('localhost','root', 'WERTY54321','php_project');
                    $SQLUpdate="SELECT * FROM announce WHERE announce_id=$no";
                    $result=mysqli_query($link,$SQLUpdate);
                    $row=mysqli_fetch_assoc($result);
                        echo "<form action='user_board.php' method='post'>";
                        echo "<input type='hidden' value='".$no."' name='announce_id'>";
                        echo "<table  style='font-family: 標楷體; font-size: '15px' cellspacing='1' width='80%' align='center' class='Q'>";
                        echo "<tr style='line-height: 35px'>";           
                        echo "<td width='25%'>張貼社團：</td>";
                        echo "<td width='75%' valign='middle' align='left'>".$row["club"]."</td>";
                        echo "</tr>";
                        echo "<tr style='line-height: 200%' font-size='15px'>";
                        echo "<td>公告主題：</td>";
                        echo "<td align='left'><input type='text'  align='left' size='45' maxlength='25' name='title' value='".$row["title"]."'></td>";
                        echo "</tr>";
                        echo "<tr style='line-height: 200%'>";
                        echo "<td>相關網址：</td>";
                        echo "<td align='left'><input type='text' align='left' size='48' value='".$row["website"]."' name='website'></td>";
                        echo "</tr>";
                        echo "<tr style='line-height: 200%'>";
                        echo "<td>公告期限：</td>";
                        echo "<td align='left'><input type='date' align='left' value='".$row["date_start"]."' name='datestart'>~<input type='date' value='".$row["date_end"]. "' name='dateend'></td>";
                        echo "</tr>";
                        echo "<tr style='line-height: 200%'>";
                        echo "<td class='yo'>公告內容：</td>";
                        echo "<td align='left'><textarea name='content' align='left' cols='80' rows='4'>".$row["content"]."</textarea></td>";
                        echo "</tr>";
                        
                        echo "<tr><td colspan='3'>";
                        echo "<input type='submit' value='確定送出' class='btn'>";
                        echo "</td></tr>";
                        
                        echo "</table>";
                        echo "</form>";

                    ?>
                  </div>           
                </div>
              </div>
              <div id="window" class="windowya">        
            <div class="login-content"> 
              <span class="close">&times;</span> 
                <form method="post" class="form" action="user_changepw.php">
                請輸入原本密碼：<input type="password" class="ori" name="password1">
                <br><br>
                請輸入要更改的密碼：<input type="password" class="newone" name="password2"><br><br>
                再次輸入要更改的密碼：<input type="password" class="newone" name="password3">
                <input type="submit" value="更改" class="re">
                </form>
            </div> 	 
          </div>  
          <script> 
            var windowya = document.getElementById('window'); 	 
            var btn = document.getElementById("changepasswd");  
            var span = document.getElementsByClassName("close")[0];  
            btn.onclick = function() { 
            windowya.style.display = "block"; 
            } 	 
            span.onclick = function() { 
            windowya.style.display = "none"; 
            } 
          </script> 	 
  </div>
</body>
</html>
