<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestAccidentSim.aspx.cs" Inherits="TestAccidentSim" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <asp:Button ID="btn" runat="server" onclick="btn_Click" Text="Button" />
        &nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Width="401px" Height="190px"></asp:ListBox>
    
        <br />
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
    </div>
    </form>
</body>
</html>
