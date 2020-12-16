<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="EPI-UserLogin.aspx.cs" Inherits="EPI_UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 50%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" style="margin-left: 300px">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUsr" runat="server" Height="30px" Width="15em"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPswrd" runat="server" Height="30px" TextMode="Password" 
                Width="15em"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Enter Your Key :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtID" runat="server" Height="30px" TextMode="Password" 
                Width="15em"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnEnter" runat="server" Height="30px" Text="Login" 
                Width="10em" onclick="btnEnter_Click" />
        </td>
    </tr>
</table>
</asp:Content>

