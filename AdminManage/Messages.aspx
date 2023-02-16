<%@ Page Title="" Language="C#" MasterPageFile="~/AdminManage/Main.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="BuyPost.AdminManage.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
        <h1 class="page-header">הודעות מערכת</h1>
    <div class="row">
        <div class="col-lg-12">
            <div class="alert alert-danger">
            <asp:Literal ID="LtlMsg" runat="server" />
            </div>
         </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
