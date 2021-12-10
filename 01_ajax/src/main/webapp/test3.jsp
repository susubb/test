
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
                    url:"three.do",
                    type:"get",
                    dataType:"json",
                    //async:true,
                    success:function (data){//回调函数(该函数的执行时机是后台执行完毕后，该函数才会执行)
                        alert(data);
                        /*alert(data.id);
                        alert(data.name);
                        alert(data.age);*/
                    }
                })
            })
        })

    </script>
</head>
<body>
    <button id="djBtn">点击</button>
</body>
</html>
