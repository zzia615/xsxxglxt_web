<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="xsxxglxt_web.ShowInfo" %>

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
        
        <h3>学生列表</h3>
        <div><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="学生编号" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="年龄" SortExpression="Age" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='server=.;Integrated Security=true;database=xsxxglxt_web' ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Info]" UpdateCommand="UPDATE [Info] SET [Name] = @Name, [Age] = @Age WHERE [ID] = @ID" DeleteCommand="DELETE FROM [Info] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Info] ([ID], [Name], [Age]) VALUES (@ID, @Name, @Age)">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
