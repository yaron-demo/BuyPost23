<%@ Page Title="" Language="C#" MasterPageFile="~/AdminManage/Main.Master" AutoEventWireup="true" CodeBehind="ProductAddEdit.aspx.cs" Inherits="BuyPost.AdminManage.ProductAddEdit" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
     <h1 class="page-header">ניהול מוצרים</h1>
    <div class="row">
        <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            הוספה/עדכון מוצר
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-4">
                                      <div class="form-group">
                                            <label>שם המוצר</label>                                           
                                     <asp:TextBox ID="TxtPname" runat="server" class="form-control" />                                           
                                      </div>
                                </div>
                                 <div class="col-lg-4">
                                      <div class="form-group">
                                            <label>מחיר</label>                                           
                                     <asp:TextBox ID="TxtPrice" runat="server" class="form-control" />                                           
                                      </div>
                                </div>
                                  <div class="col-lg-4">
                                      <div class="form-group">
                                            <label>תיאור המוצר</label>                                           
          <asp:TextBox ID="TxtPdesc" runat="server" class="form-control" TextMode="MultiLine" Rows="5" Columns="40" />                                           
                                      </div>
                                </div>
                               
                            </div>
                             <div class="row">
                                <div class="col-lg-4">
                                      <div class="form-group">
                                            <label> תמונת מוצר</label> /uploads/pics
                                     <asp:FileUpload ID="PicUpload" runat="server" class="form-control"  />
                                     <asp:Image ID="PicImg" runat="server" Width="200" ImageUrl="/uploads/pics/nopic.jpg" />
                                     <asp:TextBox ID="TxtPicname" runat="server" ReadOnly class="form-control" />                                           
                                      </div>
                                </div>
                                  <div class="col-lg-4">
                                      <div class="form-group">
                                            <label>קטגוריית מוצר</label>                                           
                                     <asp:DropDownList ID="DDLCat" runat="server" class="form-control" />
                                      </div>
                                </div>

                           
                               
                            </div>
                             <div class="row">
                                <div class="col-lg-2">
                                      <div class="form-group">                                                                                   
                           <asp:button ID="BtnSave" runat="server" class="btn btn-success" Text="שמירת נתונים" OnClick="BtnSave_Click" />                                           
                                      </div>
                                </div>
                             
                               
                            </div>
                          
                        </div>
                        <div class="panel-footer">
                           
                        </div>
                    </div>
                </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
<script src="/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({
    selector: 'textarea#MainCnt_TxtPdesc',
    language:'he_IL'
        });</script>

</asp:Content>
