<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java考试系统--主页</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="css/fontawesome-all.min.css">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css">
    <link type="text/css" rel="stylesheet" href="css/material_icons.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        body {
            font-family: Roboto, "Microsoft YaHei";
        }
        .my-opacity{
        	opacity:0.6;
        }
        .my-opacity:hover{
        	opacity:1;
        }
    </style>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<div id="main">
	    <div class="container" style="padding: 20px;">
	    	<div class="divider" style="height:20px;background:#fff;"></div>
	        <div class="row">
	        
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity" >
		                    <a href="<s:url action="studentexamlist"/>"><img class="activator" src="images/exampaper2.jpg"></a>
		                </div>
		                <div class="card-content">
		                    <span class="card-title activator grey-text text-darken-4">试题列表
		                    <i class="fas fa-sign-in-alt fa-lg right blue-text"></i></span>
		                    <p><a href="<s:url action="studentexamlist"/>">列出所有已有的试题列表</a></p>
		                </div>
		            </div>
	        	</div>
	        	
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="questionByKnowledge.jsp"><img class="activator" src="images/categories2.jpg"></a>
		                </div>
		                <div class="card-content">
		                    <span class="card-title activator grey-text text-darken-4">章节练习
		                    <i class="fas fa-sign-in-alt fa-lg right blue-text"></i></span>
		                    <p><a href="questionByKnowledge.jsp">按照章节知识点分类进行练习</a></p>
		                </div>
		            </div>
	        	</div>
	        	
	        	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
	        	<div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="questionTypes.jsp"><img class="activator" src="images/questiontype2.jpg"></a>
		                </div>
		                <div class="card-content">
		                    <span class="card-title activator grey-text text-darken-4">题型练习
		                    <i class="fas fa-sign-in-alt fa-lg right blue-text"></i></span>
		                    <p><a href="questionTypes.jsp">按选择题、填空题、判断题分别练习</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>
	        	
	        	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="examComposeTypes.jsp"><img class="activator" src="images/papergenerator2.jpg"></a>
		                </div>
		                <div class="card-content">
		                    <span class="card-title activator grey-text text-darken-4">抽题组卷
		                    <i class="fas fa-sign-in-alt fa-lg right blue-text"></i></span>
		                    <p><a href="examComposeTypes.jsp">从题库中根据策略抽题组卷</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>

				<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="importData.jsp"><img class="activator" src="images/importexport2.jpg"></a>
		                </div>
		                <div class="card-content">
		                    <span class="card-title activator grey-text text-darken-4">导入导出
		                    <i class="fas fa-sign-in-alt fa-lg right blue-text"></i></span>
		                    <p><a href="importData.jsp">用户、试题等数据的导入导出</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>
	        	
	        	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="statsTypes.jsp"><img class="activator" src="images/datastats2.png"></a>
		                </div>
		                <div class="card-content">
		                    <span class="card-title activator grey-text text-darken-4">试题分析
		                    <i class="fas fa-sign-in-alt fa-lg right blue-text"></i></span>
		                    <p><a href="statsTypes.jsp">按照题型、知识点等进行统计分析</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>
	        	
	        </div>
	    </div>
	</div>
	
	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
	<a href="modifysettings"><i class="fas fa-wrench fa-lg right blue-text"></i></a>
	</s:if>
	
	<%@ include file="include/footer.jsp" %>
	
	<!-- 用户登陆对话框 -->
	<div id="logindialog" class="modal modal-fixed-footer" style="height: 360px;">
        <div class="modal-content">
            <h4>输入登录信息</h4>
            <form name="loginform1" method="post" action="login" class="col s12" style="margin-top: 40px;">
            	<div class="row">
                    <div class="input-field col s11" style="margin: 0 auto;">
                        <!-- i class="material-icons prefix">account_circle</i-->
                        <i class="fas fa-user fa-3x prefix"></i>
                        <input type="text" placeholder="输入学号" id="registerNo" name="registerNo" class="validate" style="font-size:large" autocomplete="off">
                        <label for="registerNo">学号</label>
                    </div>
                    <div class="input-field col s11">
                        <!-- i class="material-icons prefix">phone</i-->
                        <i class="fas fa-key fa-3x prefix"></i>
                        <input type="password" placeholder="输入密码" id="password" name="password" class="validate" style="font-size:large" autocomplete="off">
                        <label for="password">密码</label>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <a href="#" onclick="loginform1.submit();"
            class="waves-effect waves-light btn btn-flat modal-action modal-close">确定</a>
        </div>
    </div>
    
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>

<script>
    $(document).ready(function () {
        $('.modal-trigger').leanModal({
            dismissible: true, //是否点模态对话框外面就可以关闭
            opacity: 0.6, //接近1，不透明
        });//使用模态对话框，必须有这句
        
        $(".button-collapse").sideNav({
            menuWidth: 200, // Default is 240
            edge: 'left', // Choose the horizontal origin
            closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
        });
        
        $(".collapsible").collapsible({
            accordion: true
        });
    })
   	
</script>

<s:if test="hasActionErrors()">
<script type="text/javascript">
	toast1();
	function toast1(){
		var errorStr='<s:property value="actionErrors[0]"/>';
	    var $toastContent = $('<span class="red-text lighten-5"><h4>'+errorStr+'</h4></span>');
	    Materialize.toast($toastContent, 4000, 'rounded');
	}
</script>
</s:if>

<s:if test="hasActionMessages()">
<script type="text/javascript">
	toast2();
	function toast2(){
		var msgStr='<s:property value="actionMessages[0]"/>';
	    var $toastContent = $('<span class="teal-text lighten-5"><h4>'+msgStr+'</h4></span>');
	    Materialize.toast($toastContent, 4000, 'rounded');
	}
</script>
</s:if>

</body>
</html>