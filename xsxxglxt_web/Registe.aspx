<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Registe.aspx.cs" Inherits="xsxxglxt_web.Registe" %>
<!DOCTYPE html>

<html>
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
            <h3>学生注册</h3>
            <div>
                <asp:Label ID="Label1" runat="server" Text="学生编号" Width="90"></asp:Label>
                <asp:TextBox ID="XSID" runat="server"></asp:TextBox>*
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="学生编号不能为空" ForeColor="Red" ControlToValidate="XSID"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="学生编号必须是8位的数字" ForeColor="Red" ControlToValidate="XSID" EnableClientScript="false" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </div>
    
            <div>
                <asp:Label ID="Label2" runat="server" Text="姓名" Width="90"></asp:Label>
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>*
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="姓名不能为空" ForeColor="Red" ControlToValidate="Name"></asp:RequiredFieldValidator>
            </div>
    
            <div>
                <asp:Label ID="Label3" runat="server" Text="年龄" Width="90"></asp:Label>
                <asp:TextBox ID="Age" runat="server"></asp:TextBox>*
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="年龄不能为空" ForeColor="Red" ControlToValidate="Age"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="年龄必须为数字" ForeColor="Red" ControlToValidate="Age" EnableClientScript="false" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="年龄范围18-58岁" ForeColor="Red" ControlToValidate="Age" MinimumValue="18" MaximumValue="58" Type="Integer"></asp:RangeValidator>
            </div>

            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click"/>
            <button type="reset">清空</button>
        </div>
    </form>
</body>
</html>
