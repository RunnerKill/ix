<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>登录</title>
    <jsp:include page="/iportal/common/include.jsp"></jsp:include>
    <style>
        .ui-content{padding:0 75px}
        .logo{width:110px;height:110px;margin:80px auto 0 auto;padding:10px;box-shadow:0 0 10px 3px #f2c53d;border-radius:50%;overflow:hidden}
        .logo img{width:100%;height:100%;}
        .form{margin:42px auto 0 auto}
        .form .line{position:relative;border-bottom:1px solid #ccc;line-height:2em}
        .form .pwd{margin-top:15px}
        .form .line input{width:100%;border:none;text-indent:2em}
        .form .line:before{font-family:icon;display:inline-block;position:absolute;top:0;left:0;width:32px;background-color:#fff;font-size:22px;color:#f2c53d}
        .form .act:before{content:"\e70c"}
        .form .pwd:before{content:"\e658"}
        .form .warn{ font-size:14px; color: #ff510f}
        .form .remember {border: none; width: 100%; text-align: right; margin-top: 8px; overflow: hidden}
        .form .remember .lr-login {font-size: 14px; float:right;height:16px;line-height:16px;display:block;margin:0px 8px;}
        .form .remember .lr-cb {float:right; width:16px;height:16px;display:block;margin: 0}
        p.link{display:block;margin-top:10px;text-align:center;}
        p.link.call{margin:110px 0 20px 0;}
        p.link.call>a{color:#444;}
        p.link.call>a:before{font-family:icon;content:"\e605";margin-right:.2em}
    </style>
    <script type="text/javascript">
        function doLogin() {
            var account = $("input[name='account']").val().trim();
            var password = $("input[name='password']").val().trim();
            var loginAuto = null;
            if ($("#cb_month_login").is(":checked")) {
                loginAuto = $("#cb_month_login").val();
            }
            if (account == '' || password == '') {
                $(".warn").html("登录失败，请填写完整信息...");
                return false;
            }
            IX.load();
            $.ajax({
                url:'doLogin',
                type:'POST',
                data: {
                    account:account,
                    password:password,
                    loginAuto:loginAuto
                },
                success:function (data) {
                    console.log(data);
                    IX.close();
                    data = eval('('+data+')');
                    var ok = data.ok;
                    if (ok == false) {
                        $(".warn").html(data.message);
                    } else {
                        if ($("#cb_month_login").is(":checked")){
                            var _cookie_data = account+"_"+data.text+"_" + new Date().getTime()
                            setCookie("_ck_dt_", _cookie_data, 30);
                        }
                        window.location.href='${page}';
                    }
                },
                error:function () {
                    IX.close();
                }
            })
        }

        function setCookie(c_name, value, expiredays) {
            var exdate = new Date()
            exdate.setDate(exdate.getDate() + expiredays)
            document.cookie = c_name + "="+escape(value)+((expiredays == null ? "":"; expires="+exdate.toUTCString()+";path=/"))
        }

        $(function () {
            $("input[name='account']").bind('keypress',function(event) {
                if(event.keyCode == "13") {
                    doLogin();
                }
            });
            $("input[name='password']").bind('keypress',function(event) {
                if(event.keyCode == "13") {
                    doLogin();
                }
            });
        })
    </script>
</head>
<body class="ui-page">
<div class="ui-body">
    <div class="ui-content">
        <div class="logo">
            <img src="media/imgs/logo-sowell.png">
        </div>
        <div class="form">
            <div class="line act">
                <input type="text" name="account" placeholder="请输入账号/手机号"/>
            </div>
            <div class="line pwd">
                <input type="password" name="password" placeholder="请输入密码"/>
            </div>
            <div class="line remember">
                <label for="cb_month_login" class="lr-login">自动登录</label>
                <input type="checkbox" name="loginAuto" id="cb_month_login" class="lr-cb" value="true">
            </div>
            <!--错误信息提示，勿删 -->
            <div class="warn"></div>
        </div>
        <a class="btn" href="javascript:;" onclick="doLogin()">登录</a>
        <p class="link"><a href="javascript:;">忘记密码？</a></p>
        <p class="link call"><a href="tel://0571-88827207">拨打客服：400-100-9571</a></p>
    </div>
</div>
</body>
</html>
