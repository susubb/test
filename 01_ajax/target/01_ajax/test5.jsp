
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
                    url:"five.do",
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
    <h3>学生信息管理系统</h3>
    <br/><br/>
    <a href="student/save.do">添加操作</a><br/><br/>
    <a href="student/update.do">修改操作</a><br/><br/>
    <a href="student/delete.do">删除操作</a><br/><br/>
    <a href="student/select.do">查询操作</a>

</body>
</html>
