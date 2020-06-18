<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xsxxglxt_web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生信息管理系统</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="Default.aspx" runat="server">首页</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink2" NavigateUrl="Registe.aspx" runat="server">学生注册</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink3" NavigateUrl="ShowInfo.aspx" runat="server">学生列表</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink4" NavigateUrl="Logout.aspx" runat="server">退出系统</asp:HyperLink>
        </div>
        <div>
            <h1>欢迎登录【学生信息管理系统】</h1>
            <h2>今天是<%= DateTime.Now.ToString("yyyy年MM月dd日") %></h2>
        </div>
    </form>
</body>
</html>
