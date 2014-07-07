    <!--水平滑动 -->
    var swipestarts = false;

    function inits() {
        if (swipestarts != true) {
            TouchSlide({
                slideCell: "#leftTabBox"
            });
            TouchSlide({
                slideCell: "#slideBox",
                titCell: ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
                mainCell: ".bd ul",
                effect: "leftLoop",
                autoPage: true, //自动分页
                autoPlay: true //自动播放
            });
        }
        swipestarts = true;
    }
    TouchSlide({
        slideCell: "#leftTabBox"
    });
    <!--水平滑动 -->


    function getdatas(datatype,page) {
        var replayList ='';
        
        $.jsonP({
            url: serverURL + 'news/gettype.php?callback=?&&datatype=' + datatype+'&&page='+page,
            async:false,
            success: function(data) {
                var jsondata = data;

                for (var num = 0; num < data.length; num++) {
                   replayList+='<li><a href="heat_content.html" data-refresh-ajax="true" onClick="setItem('+"'id'"+',';
                   replayList+=jsondata[num]['id']+')">'+jsondata[num]['title']+'</a></li>';

                }
                
                	setItem(datatype,replayList);
            }
        });
        

    }

    function gethot(){
        
        $.jsonP({
            url: serverURL + 'news/getlist.php?callback=?&&page=0',
            success: function(data) {
                var replayList = '';
                var jsondata = data;

                for (var num = 0; num < data.length; num++) {
                    replayList += '<li><a href="heat_content.html" data-refresh-ajax="true" onClick="setItem(' + "'id'," + jsondata[num]['id'] + ')"><img src="images/photos/' + jsondata[num]['path'] + '">;'
                    replayList += '<div class="hotside"><p class="bigfont">';
                    replayList += jsondata[num]['title'] + '</p>';
                    replayList += '<p class="p_cont">' + jsondata[num]['cont'] + '</p></div><span class="skim">10浏览</span></a></li> '

                }



                $('.hotlist').append(replayList);


            }
        });
        //数据请求结束
    }
    
