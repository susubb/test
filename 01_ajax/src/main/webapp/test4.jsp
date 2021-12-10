
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
                    url:"four.do",
                    type:"get",
                    dataType:"json",
                    //async:true,
                    success:function (data){//回调函数(该函数的执行时机是后台执行完毕后，该函数才会执行)
                        //alert(data);
                        /*alert(data.id);
                        alert(data.name);
                        alert(data.age);*/
                        $("#id1").html(data.s1.id);
                        $("#name1").html(data.s1.name);
                        $("#age1").html(data.s1.age);

                        $("#id2").html(data.s2.id);
                        $("#name2").html(data.s2.name);
                        $("#age2").html(data.s2.age);
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
    学员1：<br/>
    编号：<span id = "id1"></span><br/>
    姓名：<span id = "name1"></span><br/>
    年龄：<span id = "age1"></span><br/>

    <br/>
    <br/>
    学员1：<br/>
    编号：<span id = "id2"></span><br/>
    姓名：<span id = "name2"></span><br/>
    年龄：<span id = "age2"></span><br/>

</body>
</html>
