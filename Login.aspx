<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BuyPost.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="/AdminManage/css/rtl/bootstrap.min.css" rel="stylesheet">
    
    <!-- not use this in ltr -->
    <link href="/AdminManage/css/rtl/bootstrap.rtl.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/AdminManage/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="/AdminManage/css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/AdminManage/css/rtl/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/AdminManage/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/AdminManage/css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
  
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">התחברות למערכת</h3>
                    </div>
                    <div class="panel-body">
                        <form id="Form1" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox ID="Email" runat="server" placeholder="נא הזן שם משתמש" class="form-control" />
                                   
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="Pass" runat="server" placeholder="נא הזן סיסמה" class="form-control" TextMode="Password" />
                                   
                                </div>
                              
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="BtnLogin" runat="server" Text="התחבר" class="btn btn-lg btn-success btn-block" OnClick="BtnLogin_Click" />
                               
                            </fieldset>
                            <div class="alert alert-danger alert-dismissable " id="MsgError" runat="server" >
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                               שם משתמש / סיסמה אינם נכונים
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="/AdminManage/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/AdminManage/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/AdminManage/js/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/AdminManage/js/sb-admin-2.js"></script>

</body>
</html>
