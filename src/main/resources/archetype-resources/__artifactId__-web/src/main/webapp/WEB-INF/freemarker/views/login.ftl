<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<!-- bootstrap - css -->
<link href="${wwwroot}/resources/BJUI/themes/css/bootstrap.css" rel="stylesheet">
<!-- core - css -->
<link href="${wwwroot}/resources/BJUI/themes/css/style.css" rel="stylesheet">
<link href="${wwwroot}/resources/BJUI/themes/purple/core.css" id="bjui-link-theme" rel="stylesheet">
<!-- plug - css -->
<link href="${wwwroot}/resources/BJUI/plugins/kindeditor_4.1.10/themes/default/default.css" rel="stylesheet">
<link href="${wwwroot}/resources/BJUI/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="${wwwroot}/resources/BJUI/plugins/niceValidator/jquery.validator.css" rel="stylesheet">
<link href="${wwwroot}/resources/BJUI/plugins/bootstrapSelect/bootstrap-select.css" rel="stylesheet">
<link href="${wwwroot}/resources/BJUI/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">
<!--[if lte IE 7]>
<link href="${wwwroot}/resources/BJUI/themes/css/ie7.css" rel="stylesheet">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lte IE 9]>
    <script src="${wwwroot}/resources/BJUI/other/html5shiv.min.js"></script>
    <script src="${wwwroot}/resources/BJUI/other/respond.min.js"></script>
<![endif]-->
<!-- jquery -->
<script src="${wwwroot}/resources/BJUI/js/jquery-1.7.2.min.js"></script>
<script src="${wwwroot}/resources/BJUI/js/jquery.cookie.js"></script>
<!--[if lte IE 9]>
<script src="${wwwroot}/resources/BJUI/other/jquery.iframe-transport.js"></script>    
<![endif]-->
<!-- BJUI.all 分模块压缩版 -->
<script src="${wwwroot}/resources/BJUI/js/bjui-all.js"></script>
<!-- 以下是B-JUI的分模块未压缩版，建议开发调试阶段使用下面的版本 -->
<!--
<script src="${wwwroot}/resources/BJUI/js/bjui-core.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-regional.zh-CN.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-frag.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-extends.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-basedrag.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-slidebar.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-contextmenu.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-navtab.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-dialog.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-taskbar.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-ajax.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-alertmsg.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-pagination.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-util.date.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-datepicker.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-ajaxtab.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-tablefixed.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-tabledit.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-spinner.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-lookup.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-tags.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-upload.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-theme.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-initui.js"></script>
<script src="${wwwroot}/resources/BJUI/js/bjui-plugins.js"></script>
-->
<!-- plugins -->
<!-- swfupload for uploadify && kindeditor -->
<script src="${wwwroot}/resources/BJUI/plugins/swfupload/swfupload.js"></script>
<!-- kindeditor -->
<script src="${wwwroot}/resources/BJUI/plugins/kindeditor_4.1.10/kindeditor-all.min.js"></script>
<script src="${wwwroot}/resources/BJUI/plugins/kindeditor_4.1.10/lang/zh_CN.js"></script>
<!-- colorpicker -->
<script src="${wwwroot}/resources/BJUI/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- ztree -->
<script src="${wwwroot}/resources/BJUI/plugins/ztree/jquery.ztree.all-3.5.js"></script>
<!-- nice validate -->
<script src="${wwwroot}/resources/BJUI/plugins/niceValidator/jquery.validator.js"></script>
<script src="${wwwroot}/resources/BJUI/plugins/niceValidator/jquery.validator.themes.js"></script>
<!-- bootstrap plugins -->
<script src="${wwwroot}/resources/BJUI/plugins/bootstrap.min.js"></script>
<script src="${wwwroot}/resources/BJUI/plugins/bootstrapSelect/bootstrap-select.min.js"></script>
<!-- icheck -->
<script src="${wwwroot}/resources/BJUI/plugins/icheck/icheck.min.js"></script>
<!-- dragsort -->
<script src="${wwwroot}/resources/BJUI/plugins/dragsort/jquery.dragsort-0.5.1.min.js"></script>
<!-- HighCharts -->
<script src="${wwwroot}/resources/BJUI/plugins/highcharts/highcharts.js"></script>
<script src="${wwwroot}/resources/BJUI/plugins/highcharts/highcharts-3d.js"></script>
<script src="${wwwroot}/resources/BJUI/plugins/highcharts/themes/gray.js"></script>
<!-- ECharts -->
<script src="${wwwroot}/resources/BJUI/plugins/echarts/echarts.js"></script>
<!-- other plugins -->
<script src="${wwwroot}/resources/BJUI/plugins/other/jquery.autosize.js"></script>
<link href="${wwwroot}/resources/BJUI/plugins/uploadify/css/uploadify.css" rel="stylesheet">
<script src="${wwwroot}/resources/BJUI/plugins/uploadify/scripts/jquery.uploadify.min.js"></script>
<!-- init -->
<script type="text/javascript">
var COOKIE_NAME = 'sys__username';
$(function() {
    choose_bg();
	//changeCode();
	if ($.cookie(COOKIE_NAME)){
	    $("#j_username").val($.cookie(COOKIE_NAME));
	    $("#j_password").focus();
	    $("#j_remember").attr('checked', true);
	} else {
		$("#j_username").focus();
	}
	/*$("#captcha_img").click(function(){
		changeCode();
	});*/
	$("#login_form").submit(function(){
		var issubmit = true;
		var i_index  = 0;
		$(this).find('.in').each(function(i){
			if ($.trim($(this).val()).length == 0) {
				$(this).css('border', '1px #ff0000 solid');
				issubmit = false;
				if (i_index == 0)
					i_index  = i;
			}
		});
		if (!issubmit) {
			$(this).find('.in').eq(i_index).focus();
			return false;
		}
		var $remember = $("#j_remember");
		if ($remember.attr('checked')) {
			$.cookie(COOKIE_NAME, $("#j_username").val(), { path: '/', expires: 15 });
		} else {
			$.cookie(COOKIE_NAME, null, { path: '/' });  //删除cookie
		}
		$("#login_ok").attr("disabled", true).val('登陆中..');
		var password = HMAC_SHA256_MAC($("#j_username").val(), $("#j_password").val());
		alert("aaaa");
		$("#j_password").val(HMAC_SHA256_MAC($("#j_randomKey").val(), password));
        window.location.href = 'index.html'; /*注意：生产环境时请删除此行*/
        return false;
	});
});
function genTimestamp(){
	var time = new Date();
	return time.getTime();
}
function changeCode(){
	//$("#captcha_img").attr("src", "/captcha.jpeg?t="+genTimestamp());
}
function choose_bg() {
	var bg = Math.floor(Math.random() * 9 + 1);
	$('body').css('background-image', 'url(${wwwroot}/resources/img/loginbg_0'+ bg +'.jpg)');
}
</script>
<!-- for doc begin -->
<link type="text/css" rel="stylesheet" href="/js/syntaxhighlighter-2.1.382/styles/shCore.css"/>
<link type="text/css" rel="stylesheet" href="/js/syntaxhighlighter-2.1.382/styles/shThemeEclipse.css"/>
<script type="text/javascript" src="/js/syntaxhighlighter-2.1.382/scripts/brush.js"></script>
<link href="doc/doc.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
    SyntaxHighlighter.config.clipboardSwf = '/js/syntaxhighlighter-2.1.382/scripts/clipboard.swf'
    $(document).on(BJUI.eventType.initUI, function(e) {
        SyntaxHighlighter.highlight();
    })
})
</script>
<style type="text/css">
* {font-family: "Verdana", "Tahoma", "Lucida Grande", "Microsoft YaHei", "Hiragino Sans GB", sans-serif;}
body {
    background: url(${wwwroot}/resources/img/loginbg_01.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
a:link {color: #285e8e;}
.main_box {
    position: absolute; top:50%; left:50%; margin-top:-260px; margin-left: -300px; padding: 30px; width:600px;
    background: #FAFAFA; background: rgba(255,255,255,0.5); border: 1px #DDD solid;
    border-radius: 5px;
    -webkit-box-shadow: 1px 5px 8px #888888; -moz-box-shadow: 1px 5px 8px #888888; box-shadow: 1px 5px 8px #888888;
}
.main_box .setting {position: absolute; top: 5px; right: 10px; width: 10px; height: 10px;}
.main_box .setting a {color: #FF6600;}
.main_box .setting a:hover {color: #555;}
.login_logo {margin-bottom: 20px; height: 45px; text-align: center;}
.login_logo img {height: 45px;}
.login_msg {text-align: center; font-size: 16px;}
.login_form {padding-top: 20px; font-size: 16px;}
.login_box .form-control {display: inline-block; *display: inline; zoom: 1; width: auto; font-size: 18px;}
.login_box .form-control.x319 {width: 319px;}
.login_box .form-control.x164 {width: 164px;}
.login_box .form-group {margin-bottom: 20px;}
.login_box .form-group label.t {width: 120px; text-align: right; cursor: p	ointer;}
.login_box .form-group.space {padding-top: 15px; border-top: 1px #FFF dotted;}
.login_box .form-group img {margin-top: 1px; height: 32px; vertical-align: top;}
.login_box .m {cursor: pointer;}
.bottom {text-align: center; font-size: 12px;}
</style>
<!-- for doc end -->
</head>
<body>
   <div class="main_box">
    <div class="setting"><a href="javascript:;" onclick="choose_bg();" title="更换背景"><span class="glyphicon glyphicon-th-large"></span></a></div>
	<div class="login_box">
	
        <div  class="bjui-navbar-header" align="center">
          <img src="${wwwroot}/resources/img/logo.png">
       
        </div>

        <div class="login_form">
    		<form action="j_spring_security_check" id="login_form" method="post">
    			<div class="form-group">
    				<label for="j_username" class="t">用户名：</label> <input id="j_username" value="" name="j_username" type="text" class="form-control x319 in" autocomplete="off">
    			</div>
    			<div class="form-group">
    				<label for="j_password" class="t">密　码：</label> <input id="j_password" value="" name="j_password" type="password" class="form-control x319 in">
    			</div>
    			
    			<div class="form-group">
                    <label class="t"></label>
                    <label for="j_remember" class="m"><input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!</label>
    			</div>
    			<div class="form-group space">
                    <label class="t"></label>
    				<input type="submit" id="login_ok" value="&nbsp;登&nbsp;录&nbsp;" class="btn btn-primary btn-lg">&nbsp;&nbsp;&nbsp;&nbsp;
    				<input type="reset" value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg">
    			</div>
    		</form>
        </div>
	</div>

</div>
</body>
</html>