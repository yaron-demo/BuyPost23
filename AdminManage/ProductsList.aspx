<%@ Page Title="" Language="C#" MasterPageFile="~/AdminManage/Main.Master" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="BuyPost.ProductsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
      <h1 class="page-header">ניהול מוצרים</h1>
      <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          רשימת מוצרים במערכת
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <a href="ProductAddEdit.aspx" class="btn btn-succees">הוספת מוצר חדש</a>
                            <a href="ExportToExcel.ashx?dt=prod" class="btn btn-succees">ייצוא לאקסל</a>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="Products-Table">
                                    <thead>
                                        <tr>
                                            <th>קוד מוצר</th>
                                            <th>שם המוצר</th>
                                            <th>מחיר</th>                                          
                                            <th>תמונת מוצר</th> 
                                            <th>קטגוריה</th> 
                                             <th>עריכת מוצר</th>
                                            <th>מחיקת מוצר</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:repeater ID="RptProducts" runat="server" OnItemDataBound="RptProducts_ItemDataBound">
                                            <ItemTemplate>
                                      <tr class="even gradeC">
                                            <td><%#Eval("Pid") %></td>
                                            <td><%#Eval("Pname") %></td>
                                            <td><%#Eval("Price") %></td>                                          
                                            <td class="center"><%#Eval("Picname") %></td>
                                          <td><asp:Literal ID="LtlCategory" runat="server" /></td>
                                            <td class="center"><a href="ProductAddEdit.aspx?pid=<%#Eval("Pid") %>">ערוך</a></td>
                                           <td class="center"><a href="#" onclick="if(confirm('האם אתה בטוח?')) window.location='ProductAddEdit.aspx?pid=<%#Eval("Pid") %>&op=del'">מחק</a></td>
                                       </tr>
                                            </ItemTemplate>
                                           
                                            
                                        </asp:repeater>
                         
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                         
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
     <!-- DataTables JavaScript -->
    <script src="js/jquery/jquery.dataTables.min.js"></script>
    <script src="js/bootstrap/dataTables.bootstrap.min.js"></script>

    

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
        $(document).ready(function() {
            $('#Products-Table').dataTable();
        });
    </script>
</asp:Content>
