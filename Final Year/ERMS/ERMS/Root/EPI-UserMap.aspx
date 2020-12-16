<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="EPI-UserMap.aspx.cs" Inherits="ESA_UserMap" %>

<%@ Register src="GoogleMapForASPNet.ascx" tagname="GoogleMapForASPNet" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
</asp:Content>

