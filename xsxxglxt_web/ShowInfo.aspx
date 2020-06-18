<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="jsxxglxt.ShowInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="学生编号" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="年龄" SortExpression="Age" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='server=127.0.0.1;Integrated Security=true;database=xsxxglxt_web' ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Info]" UpdateCommand="UPDATE [Info] SET [Name] = @Name, [Age] = @Age WHERE [ID] = @ID" DeleteCommand="DELETE FROM [Info] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Info] ([ID], [Name], [Age]) VALUES (@ID, @Name, @Age)">
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
</asp:Content>
