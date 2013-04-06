var t = n = 0, count;
	$(document).ready(function(){	
		count=$("#news_picture_list a").length;
		$("#news_picture_list a:not(:first-child)").hide();
		$("#news_picture_info").html($("#news_picture_list a:first-child").find("img").attr('alt'));
		$("#news_picture_info").click(function(){window.open($("#news_picture_list a:first-child").attr('href'), "_blank")});
		$("#news_picture li").click(function() {
			var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
			n = i;
			if (i >= count) return;
			$("#news_picture_info").html($("#news_picture_list a").eq(i).find("img").attr('alt'));
			$("#news_picture_info").unbind().click(function(){window.open($("#news_picture_list a").eq(i).attr('href'), "_blank")})
			$("#news_picture_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
			document.getElementById("news_picture").style.background="";
			$(this).toggleClass("on");
			$(this).siblings().removeAttr("class");
		});
		t = setInterval("showAuto()", 4000);
		$("#news_picture").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 4000);});
	})
	
	function showAuto()
	{
		n = n >=(count - 1) ? 0 : ++n;
		$("#news_picture li").eq(n).trigger('click');
	}