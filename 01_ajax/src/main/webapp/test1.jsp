
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <script src="js/jquery-3.4.1.js"></script>
    <script>
        $(function (){
            $("#djBtn").click(function () {

                $.ajax({

                    url:"one.do",//访问后台servlet地址
                    //data:"key1=value&key2=value2",//为后台传递的参数
                    type:"get",//请求方式，get/post
                    dataType:"text",//从后台接收数据的方式 ，text：接收普通文本  json：接受json格式的文本
                    //async:true,
                    success:function (data){//回调函数(该函数的执行时机是后台执行完毕后，该函数才会执行)
                        //data:从后台响应回来的数据
                        $("#msg").html(data);
                    }
                })
            })
        })

    </script>
</head>
<body>
    <button id="djBtn">点击</button>
    <br/>
    <br/>

    <div id="msg" style="width: 200px;height: 200px;background-color:pink">

    </div>
    <br/>
    <br/>

    <div style="width: 200px;height: 200px;background-color:pink">
        adbdfs
    </div>
</body>
</html>
