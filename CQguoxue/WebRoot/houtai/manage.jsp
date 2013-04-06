<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% 
	String houtai_username = null;

	if(session.getAttribute("houtai_user_login_sure") != "houtai_have_login")
	{
			response.sendRedirect("login.jsp");
	}
	else 
	{
			if(Integer.parseInt(session.getAttribute("houtai_user_rights").toString()) != 1)
			{
				response.sendRedirect("webmanage.jsp");
			}
			else
			{
				houtai_username = session.getAttribute("houtai_user_username").toString();
			}
	}
	
	

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>重庆国学院网站后台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="cssofhoutai/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="jsofhoutai/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="jsofhoutai/themes/icon.css" />
    <script type="text/javascript" src="jsofhoutai/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="jsofhoutai/jquery.easyui.js"></script>
    

	<script type="text/javascript" src='jsofhoutai/outlook2.js'> </script>
	
	

    <script type="text/javascript">
	 var _menus = {"menus":[
						{"menuid":"1","icon":"icon-sys","menuname":"用户管理",
							"menus":[{"menuname":"管理员用户管理","icon":"icon-sysusers","url":"houtai/usermanager/system_user.jsp"},
									{"menuname":"注册用户管理","icon":"icon-ordusers","url":"houtai/usermanager/ordinary_user.jsp"},																											
									{"menuname":"系统日志","icon":"icon-log","url":"houtai/usermanager/system_log.jsp"}
								]
						},{"menuid":"8","icon":"icon-sys","menuname":"新闻管理",
							"menus":[{"menuname":"学院新闻","icon":"icon-news","url":"houtai/newsmanager/xueyuannews.jsp"},
									{"menuname":"学院通知","icon":"icon-news","url":"houtai/newsmanager/xueyuantongzhi.jsp"},
									{"menuname":"国学新闻","icon":"icon-news","url":"houtai/newsmanager/guoxuenews.jsp"},
									{"menuname":"图片展示","icon":"icon-images","url":"houtai/newsmanager/pictureshow.jsp"}
								]
						},{"menuid":"56","icon":"icon-sys","menuname":"国学观止",
							"menus":[{"menuname":"蒙学","icon":"icon-guanzhi","url":"houtai/guoxueguanzhimanager/mengxue.jsp"},
									{"menuname":"小学","icon":"icon-guanzhi","url":"houtai/guoxueguanzhimanager/xiaoxue.jsp"},
									{"menuname":"经史子集","icon":"icon-guanzhi","url":"houtai/guoxueguanzhimanager/jingshiziji.jsp"},
									{"menuname":"国粹国艺","icon":"icon-guanzhi","url":"houtai/guoxueguanzhimanager/guocuiguoyi.jsp"},
									{"menuname":"国学工具","icon":"icon-guanzhi","url":"houtai/guoxueguanzhimanager/guoxuegongju.jsp"},
									{"menuname":"推荐读物","icon":"icon-guanzhi","url":"houtai/guoxueguanzhimanager/tuijianduwu.jsp"},
									{"menuname":"国学人物","icon":"icon-guanzhirenwu","url":"houtai/guoxueguanzhimanager/guoxuerenwu.jsp"},
									{"menuname":"观止图片管理","icon":"icon-guanzhirenwu","url":"houtai/guoxueguanzhimanager/picture.jsp"}
								]
						},{"menuid":"28","icon":"icon-sys","menuname":"国学培训",
							"menus":[{"menuname":"公务员培训","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/gongwuyuanpeixun.jsp"},
									{"menuname":"企事业管理干部培训","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/qishiyeguanliganbupeixun.jsp"},
									{"menuname":"国学师资培训","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/guoxueshizipeixun.jsp"},
									{"menuname":"爱好者培训","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/aihaozhepeixun.jsp"},
									{"menuname":"培训计划","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/peixunjihua.jsp"},
									{"menuname":"培训成果","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/peixunchengguo.jsp"},
									{"menuname":"培训图片管理","icon":"icon-peixun","url":"houtai/guoxuepeixunmanager/picture.jsp"}
								]
						},{"menuid":"9","icon":"icon-sys","menuname":"国学推广",
							"menus":[{"menuname":"学校推广","icon":"icon-tuiguang","url":"houtai/guoxuetuiguangmanager/xuexiaotuiguang.jsp"},
									{"menuname":"社区推广","icon":"icon-tuiguang","url":"houtai/guoxuetuiguangmanager/shequtuiguang.jsp"},
									{"menuname":"农村推广","icon":"icon-tuiguang","url":"houtai/guoxuetuiguangmanager/nongchuntuiguang.jsp"},
									{"menuname":"推广图片管理","icon":"icon-tuiguang","url":"houtai/guoxuetuiguangmanager/picture.jsp"}
								]
						},{"menuid":"11","icon":"icon-sys","menuname":"国学研究",
							"menus":[{"menuname":"经典研究","icon":"icon-yanjiu","url":"houtai/guoxueyanjiumanager/jingdianyanjiu.jsp"},
									{"menuname":"最新研究","icon":"icon-yanjiu","url":"houtai/guoxueyanjiumanager/zuixinyanjiu.jsp"},
									{"menuname":"海外研究","icon":"icon-yanjiu","url":"houtai/guoxueyanjiumanager/haiwaiyanjiu.jsp"}
								]
						},
						{"menuid":"12","icon":"icon-sys","menuname":"国学教育",
							"menus":[{"menuname":"学历教育","icon":"icon-jiaoyu","url":"houtai/guoxuejiaoyumanager/xuelijiaoyu.jsp"},
									{"menuname":"辅修二专教育","icon":"icon-jiaoyu","url":"houtai/guoxuejiaoyumanager/fuxiuerzhuanjiaoyu.jsp"},
									{"menuname":"网络教育","icon":"icon-jiaoyu","url":"houtai/guoxuejiaoyumanager/wangluojiaoyu.jsp"}
								]
						},
						{"menuid":"13","icon":"icon-sys","menuname":"报名系统管理",
							"menus":[{"menuname":"培训方案管理","icon":"icon-quwei","url":"houtai/baomingguanli/peixunfanganguanli.jsp"},
									{"menuname":"报名管理","icon":"icon-lianjie","url":"houtai/baomingguanli/baomingbiao.jsp"}
								]
						},
						{"menuid":"13","icon":"icon-sys","menuname":"其他模块",
							"menus":[{"menuname":"趣味国学","icon":"icon-quwei","url":"houtai/othermanager/quweiguoxue.jsp"},
									{"menuname":"友情链接","icon":"icon-lianjie","url":"houtai/othermanager/youqinglianjie.jsp"},
									{"menuname":"行政机构研究机构","icon":"icon-lianjie","url":"houtai/othermanager/jigouyanjiu.jsp"}
								]
						}
						
				]};
     

    </script>

</head>
<body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
<noscript>
<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
    <img src="images/noscript.gif" alt='抱歉，请开启脚本支持！' />
</div></noscript>
    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">欢迎<%=houtai_username %> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 16px; "> </span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer"></div>
    </div>
    <div region="west" split="true" title="导航菜单" style="width:180px;" id="west">
<div class="easyui-accordion" fit="true" border="false">
		<!--  导航内容 -->
				
			</div>

    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden;" id="home">
				
			<h1>欢迎来到重庆国学院网站后台！</h1>

			</div>
		</div>
    </div>
    
    
   

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>


</body>
</html>