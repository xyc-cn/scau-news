create table diary(
	id	integer primary key auto_increment,
	title  varchar(40) not null,
	cont text,
	replay integer,
	types varchar(40)
	
);
<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 14-4-27
 * Time: 下午12:49
 */
session_start();
if($_SESSION['login']!=111)
{
    Header("Location:login.html"); //未登陆状态下转到登陆窗口界面
    exit;

}
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/bg3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <style type="text/css">
        .fi{
        }
        .se{
        }
        .lists{
            -webkit-border-radius: 6px;
            -khtml-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            -webkit-box-shadow: 0px 0px 2px #69635a;
            -moz-box-shadow: 0px 0px 2px #69635a;
            box-shadow: 0px 0px 2px #69635a;
            width: 100%;
            background-color: #fff;
            overflow: hidden;
            border: solid 1px #eee;
            font-weight: bold;
        }
        .lists li{
            font-size: 20px;
            height: 40px;
            line-height: 40px;
            border-bottom: solid 1px #eee;
        }
        .lists li:last-child{
            border-bottom:0px;
        }
        .lists li a{
            display: block;
            width: 100%;
            height: 100%;
            padding-left: 10px;
        }
        .lists li:hover{
            background-color: #0088cc;
        }
        .lists li a:hover{
            color: #fff;
        }
        #footer{
            margin: 0 0 0 0;
            width: 100%;
            height: 100px;
            background: #000;
            background-color: #96dd3b;
        }
        .main{
            position: relative;
            width: 100%;
            min-height: 760px;
            background-color: #fff;
            -webkit-border-radius: 6px;
            -khtml-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            margin-bottom: 20px;
            -webkit-box-shadow: 0px 0px 2px #69635a;
            -moz-box-shadow: 0px 0px 2px #69635a;
            box-shadow: 0px 0px 2px #69635a;
        }
        .main button{
            position: absolute;
            right: 5px;
            top: 5px;
        }
        .main_list{
            padding-top: 50px;
            padding-bottom: 10px;
            width: 100%;


        }
        .main_list li{
            position: relative;
            width: 100%;
            height: 200px;
            margin-bottom: 5px;
            border-bottom: solid 2px #ddd;
            overflow: hidden;
        }
        .main h2{
            position: absolute;
            top: 0px;
            left: 10px;
            font-weight: bold;
            font-family: "ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            color: #0088ff;

        }
        #footer h4{
            font-family: "ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            font-weight: bold;
            position: relative;
            left: 10px;
            font-size: 16px;
            color: #fff;
            text-align: center;

        }
        .main_list li h4{
            font-family: "ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            font-weight: bold;
            position: relative;
            left: 10px;
            font-size: 16px;

        }
        .main_list li p{
            border-top: solid 1px #dc2;
            margin-top: 20px;
            width: 98%;
            margin-left: 1%;
            margin-right: 1%;
            white-space: pre-wrap;
        }
        .main_list li .dele{
            position: absolute;
            top: 20px;
            left: 40px;
            border-bottom: none;
        }
        .main_list li .edit{
            position: absolute;
            top: 20px;
            left: 10px;
            border-bottom: none;
        } </style>
</head>
<body>
<?php
require("managers.php");
if(isset($_GET['type'])){
    echo("顶层新闻");
}else{
    $mana=new managers();
    $info=$mana->getinfobytype("news");
    while($row = mysql_fetch_array($info))
    {
        echo $row['title'] . " " . $row['cont'];
        echo "<br />";
    }

}
?>
<h1>Scau News Web Background</h1>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2 fi">
            <ul class="lists">
                <li><a href="">顶层新闻</a></li>
                <li><a href="">首页轮播</a></li>
                <li><a href="">新闻中心</a></li>
                <li><a href="">校园通告</a></li>
                <li><a href="">媒体华农</a></li>
                <li><a href="">校园快讯</a></li>
            </ul>
            <?php
            echo("asaas");
            ?>
        </div>
        <div class="span10 se">
            <div class="main">
                <h2>顶层新闻</h2>
                <a href="post.html"><button href="" class="btn btn-info">发表</button></a>

                <ul class="main_list">
                    <li><a href="" class="edit">编辑</a>
                        <a href="" class="dele">删除</a>
                        <h4>我校辅导员队伍建设取得显著成绩</h4>
                        <p>    近日，广东省开展了2013年度辅导员年度人物评选活动及第三届辅导员技能大赛，我校辅导员喜获佳绩。

                            在“2013年广东省辅导员年度人物”评选活动中，我校食品学院鲍金勇老师在参评的81所高校共199名候选人中名列第一，被评为“2013广东省辅导员年度人物”，原理学院陈建平老师获得“2013广东省辅导员年度人物”提名奖，艺术学院陈晓东、工程学院梁娟、林学院林轩东3位老师获得“2013广东省辅导员年度人物”入围奖。在第三届广东高校辅导员技能大赛中，我校通过校内初赛选拔推荐参赛的3名辅导员获得优异成绩。动物科学学院辅导员彭金富老师、工程学院辅导员傅梅芳老师均荣获“二等奖”和“十佳谈心谈话”单项奖，林学院肖华老师获得“优秀奖”。此外，在近日全国高校辅导员职业能力大赛分赛区选拨中，彭金富老师表现突出，顺利入选广东省代表队将于本月底参加第三届全国高校辅导员职业能力大赛第四赛区复赛。

                            一直以来，学校高度重视辅导员队伍建设，学校党委副书记陈少雄到各学院调研工作时多次提出要加强辅导员队伍建设，进一步发挥辅导员在大学生思想政治教育中的重要作用；强调辅导员要不断提高自己的思想意识和理论水平，加强自身职业化、专业化、专家化建设，做到纪律严明，作风正派，有大局意识和良好的精神状态。

                            2013年7月，中共教育部党组关于印发《普通高等学校辅导员培训规划(2013-2017年)》的通知，提出要进一步推进辅导员队伍建设，进一步提高辅导员培训质量。要从思想政治理论教育、专业素养提升、职业能力培养等方面加大培训力度和深度。我校经过多年探索，目前已形成了系统的辅导员队伍建设和发展培训体系，辅导员队伍建设取得了显著成效：一是开展校本培训利用校内外各种资源，开展辅导员专题培训和职业认证；二是定期举办辅导员沙龙，促进辅导员之间交流学习；三是鼓励辅导员结合工作，开展科研活动；四是选派辅导员到外单位挂职锻炼；五是优化辅导员的考核及评优体系。（文图/学生工作处）

                        </p>
                    </li>
                    <li><a href="" class="edit">编辑</a>
                        <a href="" class="dele">删除</a>
                        <h4>我校辅导员队伍建设取得显著成绩</h4>
                        <p>    近日，广东省开展了2013年度辅导员年度人物评选活动及第三届辅导员技能大赛，我校辅导员喜获佳绩。

                            在“2013年广东省辅导员年度人物”评选活动中，我校食品学院鲍金勇老师在参评的81所高校共199名候选人中名列第一，被评为“2013广东省辅导员年度人物”，原理学院陈建平老师获得“2013广东省辅导员年度人物”提名奖，艺术学院陈晓东、工程学院梁娟、林学院林轩东3位老师获得“2013广东省辅导员年度人物”入围奖。在第三届广东高校辅导员技能大赛中，我校通过校内初赛选拔推荐参赛的3名辅导员获得优异成绩。动物科学学院辅导员彭金富老师、工程学院辅导员傅梅芳老师均荣获“二等奖”和“十佳谈心谈话”单项奖，林学院肖华老师获得“优秀奖”。此外，在近日全国高校辅导员职业能力大赛分赛区选拨中，彭金富老师表现突出，顺利入选广东省代表队将于本月底参加第三届全国高校辅导员职业能力大赛第四赛区复赛。

                            一直以来，学校高度重视辅导员队伍建设，学校党委副书记陈少雄到各学院调研工作时多次提出要加强辅导员队伍建设，进一步发挥辅导员在大学生思想政治教育中的重要作用；强调辅导员要不断提高自己的思想意识和理论水平，加强自身职业化、专业化、专家化建设，做到纪律严明，作风正派，有大局意识和良好的精神状态。

                            2013年7月，中共教育部党组关于印发《普通高等学校辅导员培训规划(2013-2017年)》的通知，提出要进一步推进辅导员队伍建设，进一步提高辅导员培训质量。要从思想政治理论教育、专业素养提升、职业能力培养等方面加大培训力度和深度。我校经过多年探索，目前已形成了系统的辅导员队伍建设和发展培训体系，辅导员队伍建设取得了显著成效：一是开展校本培训利用校内外各种资源，开展辅导员专题培训和职业认证；二是定期举办辅导员沙龙，促进辅导员之间交流学习；三是鼓励辅导员结合工作，开展科研活动；四是选派辅导员到外单位挂职锻炼；五是优化辅导员的考核及评优体系。（文图/学生工作处）

                        </p>
                    </li><li><a href="" class="edit">编辑</a>
                        <a href="" class="dele">删除</a>
                        <h4>我校辅导员队伍建设取得显著成绩</h4>
                        <p>    近日，广东省开展了2013年度辅导员年度人物评选活动及第三届辅导员技能大赛，我校辅导员喜获佳绩。

                            在“2013年广东省辅导员年度人物”评选活动中，我校食品学院鲍金勇老师在参评的81所高校共199名候选人中名列第一，被评为“2013广东省辅导员年度人物”，原理学院陈建平老师获得“2013广东省辅导员年度人物”提名奖，艺术学院陈晓东、工程学院梁娟、林学院林轩东3位老师获得“2013广东省辅导员年度人物”入围奖。在第三届广东高校辅导员技能大赛中，我校通过校内初赛选拔推荐参赛的3名辅导员获得优异成绩。动物科学学院辅导员彭金富老师、工程学院辅导员傅梅芳老师均荣获“二等奖”和“十佳谈心谈话”单项奖，林学院肖华老师获得“优秀奖”。此外，在近日全国高校辅导员职业能力大赛分赛区选拨中，彭金富老师表现突出，顺利入选广东省代表队将于本月底参加第三届全国高校辅导员职业能力大赛第四赛区复赛。

                            一直以来，学校高度重视辅导员队伍建设，学校党委副书记陈少雄到各学院调研工作时多次提出要加强辅导员队伍建设，进一步发挥辅导员在大学生思想政治教育中的重要作用；强调辅导员要不断提高自己的思想意识和理论水平，加强自身职业化、专业化、专家化建设，做到纪律严明，作风正派，有大局意识和良好的精神状态。

                            2013年7月，中共教育部党组关于印发《普通高等学校辅导员培训规划(2013-2017年)》的通知，提出要进一步推进辅导员队伍建设，进一步提高辅导员培训质量。要从思想政治理论教育、专业素养提升、职业能力培养等方面加大培训力度和深度。我校经过多年探索，目前已形成了系统的辅导员队伍建设和发展培训体系，辅导员队伍建设取得了显著成效：一是开展校本培训利用校内外各种资源，开展辅导员专题培训和职业认证；二是定期举办辅导员沙龙，促进辅导员之间交流学习；三是鼓励辅导员结合工作，开展科研活动；四是选派辅导员到外单位挂职锻炼；五是优化辅导员的考核及评优体系。（文图/学生工作处）

                        </p>
                    </li><li><a href="" class="edit">编辑</a>
                        <a href="" class="dele">删除</a>
                        <h4>我校辅导员队伍建设取得显著成绩</h4>
                        <p>    近日，广东省开展了2013年度辅导员年度人物评选活动及第三届辅导员技能大赛，我校辅导员喜获佳绩。

                            在“2013年广东省辅导员年度人物”评选活动中，我校食品学院鲍金勇老师在参评的81所高校共199名候选人中名列第一，被评为“2013广东省辅导员年度人物”，原理学院陈建平老师获得“2013广东省辅导员年度人物”提名奖，艺术学院陈晓东、工程学院梁娟、林学院林轩东3位老师获得“2013广东省辅导员年度人物”入围奖。在第三届广东高校辅导员技能大赛中，我校通过校内初赛选拔推荐参赛的3名辅导员获得优异成绩。动物科学学院辅导员彭金富老师、工程学院辅导员傅梅芳老师均荣获“二等奖”和“十佳谈心谈话”单项奖，林学院肖华老师获得“优秀奖”。此外，在近日全国高校辅导员职业能力大赛分赛区选拨中，彭金富老师表现突出，顺利入选广东省代表队将于本月底参加第三届全国高校辅导员职业能力大赛第四赛区复赛。

                            一直以来，学校高度重视辅导员队伍建设，学校党委副书记陈少雄到各学院调研工作时多次提出要加强辅导员队伍建设，进一步发挥辅导员在大学生思想政治教育中的重要作用；强调辅导员要不断提高自己的思想意识和理论水平，加强自身职业化、专业化、专家化建设，做到纪律严明，作风正派，有大局意识和良好的精神状态。

                            2013年7月，中共教育部党组关于印发《普通高等学校辅导员培训规划(2013-2017年)》的通知，提出要进一步推进辅导员队伍建设，进一步提高辅导员培训质量。要从思想政治理论教育、专业素养提升、职业能力培养等方面加大培训力度和深度。我校经过多年探索，目前已形成了系统的辅导员队伍建设和发展培训体系，辅导员队伍建设取得了显著成效：一是开展校本培训利用校内外各种资源，开展辅导员专题培训和职业认证；二是定期举办辅导员沙龙，促进辅导员之间交流学习；三是鼓励辅导员结合工作，开展科研活动；四是选派辅导员到外单位挂职锻炼；五是优化辅导员的考核及评优体系。（文图/学生工作处）

                        </p>
                    </li><li><a href="" class="edit">编辑</a>
                        <a href="" class="dele">删除</a>
                        <h4>我校辅导员队伍建设取得显著成绩</h4>
                        <p>    近日，广东省开展了2013年度辅导员年度人物评选活动及第三届辅导员技能大赛，我校辅导员喜获佳绩。

                            在“2013年广东省辅导员年度人物”评选活动中，我校食品学院鲍金勇老师在参评的81所高校共199名候选人中名列第一，被评为“2013广东省辅导员年度人物”，原理学院陈建平老师获得“2013广东省辅导员年度人物”提名奖，艺术学院陈晓东、工程学院梁娟、林学院林轩东3位老师获得“2013广东省辅导员年度人物”入围奖。在第三届广东高校辅导员技能大赛中，我校通过校内初赛选拔推荐参赛的3名辅导员获得优异成绩。动物科学学院辅导员彭金富老师、工程学院辅导员傅梅芳老师均荣获“二等奖”和“十佳谈心谈话”单项奖，林学院肖华老师获得“优秀奖”。此外，在近日全国高校辅导员职业能力大赛分赛区选拨中，彭金富老师表现突出，顺利入选广东省代表队将于本月底参加第三届全国高校辅导员职业能力大赛第四赛区复赛。

                            一直以来，学校高度重视辅导员队伍建设，学校党委副书记陈少雄到各学院调研工作时多次提出要加强辅导员队伍建设，进一步发挥辅导员在大学生思想政治教育中的重要作用；强调辅导员要不断提高自己的思想意识和理论水平，加强自身职业化、专业化、专家化建设，做到纪律严明，作风正派，有大局意识和良好的精神状态。

                            2013年7月，中共教育部党组关于印发《普通高等学校辅导员培训规划(2013-2017年)》的通知，提出要进一步推进辅导员队伍建设，进一步提高辅导员培训质量。要从思想政治理论教育、专业素养提升、职业能力培养等方面加大培训力度和深度。我校经过多年探索，目前已形成了系统的辅导员队伍建设和发展培训体系，辅导员队伍建设取得了显著成效：一是开展校本培训利用校内外各种资源，开展辅导员专题培训和职业认证；二是定期举办辅导员沙龙，促进辅导员之间交流学习；三是鼓励辅导员结合工作，开展科研活动；四是选派辅导员到外单位挂职锻炼；五是优化辅导员的考核及评优体系。（文图/学生工作处）

                        </p>
                    </li><li><a href="" class="edit">编辑</a>
                        <a href="" class="dele">删除</a>
                        <h4>我校辅导员队伍建设取得显著成绩</h4>
                        <p>    近日，广东省开展了2013年度辅导员年度人物评选活动及第三届辅导员技能大赛，我校辅导员喜获佳绩。

                            在“2013年广东省辅导员年度人物”评选活动中，我校食品学院鲍金勇老师在参评的81所高校共199名候选人中名列第一，被评为“2013广东省辅导员年度人物”，原理学院陈建平老师获得“2013广东省辅导员年度人物”提名奖，艺术学院陈晓东、工程学院梁娟、林学院林轩东3位老师获得“2013广东省辅导员年度人物”入围奖。在第三届广东高校辅导员技能大赛中，我校通过校内初赛选拔推荐参赛的3名辅导员获得优异成绩。动物科学学院辅导员彭金富老师、工程学院辅导员傅梅芳老师均荣获“二等奖”和“十佳谈心谈话”单项奖，林学院肖华老师获得“优秀奖”。此外，在近日全国高校辅导员职业能力大赛分赛区选拨中，彭金富老师表现突出，顺利入选广东省代表队将于本月底参加第三届全国高校辅导员职业能力大赛第四赛区复赛。

                            一直以来，学校高度重视辅导员队伍建设，学校党委副书记陈少雄到各学院调研工作时多次提出要加强辅导员队伍建设，进一步发挥辅导员在大学生思想政治教育中的重要作用；强调辅导员要不断提高自己的思想意识和理论水平，加强自身职业化、专业化、专家化建设，做到纪律严明，作风正派，有大局意识和良好的精神状态。

                            2013年7月，中共教育部党组关于印发《普通高等学校辅导员培训规划(2013-2017年)》的通知，提出要进一步推进辅导员队伍建设，进一步提高辅导员培训质量。要从思想政治理论教育、专业素养提升、职业能力培养等方面加大培训力度和深度。我校经过多年探索，目前已形成了系统的辅导员队伍建设和发展培训体系，辅导员队伍建设取得了显著成效：一是开展校本培训利用校内外各种资源，开展辅导员专题培训和职业认证；二是定期举办辅导员沙龙，促进辅导员之间交流学习；三是鼓励辅导员结合工作，开展科研活动；四是选派辅导员到外单位挂职锻炼；五是优化辅导员的考核及评优体系。（文图/学生工作处）

                        </p>
                    </li>
                </ul>
                <div class="pagination pagination-right">
                    <ul>
                        <li><a href="#">Prev</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="footer">
    <br>
    <h4>scau news background</h4>
    <h4>powered by cheng</h4>
</div>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
