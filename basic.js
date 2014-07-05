// JavaScript Document
//http://www.phonegap100.com/appapi.php?a=getThreadCate&callback=?

/*

$.jsonP({			
		url:'http://jsfiddle.net/echo/jsonp/?test=some+html+content&callback=?',	
		success:function(data){
			//$('#af23_content').html(data.test)						
			alert(data['test']);
				
		}
	});	


*/

function getThreadCate(){
	$.jsonP({		
			url:serverURL+'/appapi.php?a=getThreadCate&callback=?',	
			//http://www.phonegap100.com/appapi.php?a=getThreadCate&callback=?
			success:function(data){				
					alert(data['result'][1]['name']);
				//alert(data['result'][0]['name']);
				//获取一级分类第一个的名称
				//console.log(data['result'][0]['name']+'111');
				//获取一级分类下的子分类的第一个分类名称
				//console.log(data['result'][0]['subcate'][0]['name']+'111');
				var jsondata=data['result'];
				var str='';
				for(var i=0;i<jsondata.length;i++){
					str+='<li class="divider">'+jsondata[i].name+'</li>';
					var subcatedata=jsondata[i]['subcate'];//获取二级分类						
					for(var j=0;j<subcatedata.length;j++){
						str+='<li><a href="#forum_list_panel"><img class="forum_list_img" src="images/forum_new.gif" />'+subcatedata[j]['name']+'</a></li>';
												
					}
					
				}				
				$('#listForumCate').append(str);
			}
		});			
}
