<%@ Page Title="" Language="C#" MasterPageFile="~/AdminManage/Main.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BuyPost.AdminManage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  .ui-autocomplete-loading {
    background: white url("images/ui-anim_basic_16x16.gif") right center no-repeat;
  }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
    <div class="ui-widget">
  <label for="birds">Birds: </label>
  <input id="birds">
</div>
 
<div class="ui-widget" style="margin-top:2em; font-family:Arial">
  Result:
  <div id="log" style="height: 200px; width: 300px; overflow: auto;" class="ui-widget-content"></div>
</div>
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
    function log( message ) {
      $( "<div>" ).text( message ).prependTo( "#log" );
      $( "#log" ).scrollTop( 0 );
    }
 
    $( "#birds" ).autocomplete({
        source: function (request, response) {
            fetch(url, {
                data: { term: request.term },
                method: 'POST'

            }).then((res) => { return res.json() }).
                then((data) => {
                    let arr = data.map(({ Pid, Pname }) => ({ label: Pname, value: Pid }));
                    //  let arr = data.map((item) => ({ label: item.Pname, value: item.Pid }));
                    response(arr);
                })
                .catch((err) => { alert(err.message);});
        //$.ajax( {
        //  url: "Products.ashx",
        //  dataType: "json",
        //  data: {
        //    term: request.term
        //  },
        //  success: function( data ) {
        //      let arr = data.map(({ Pid, Pname }) => ({ label: Pname, value: Pid }));
        //    //  let arr = data.map((item) => ({ label: item.Pname, value: item.Pid }));
        //      response(arr);
        //    },
        //    error: function (err) {
        //        alert(err.message);
        //    }
        //} );
      },
      minLength: 2,
      select: function( event, ui ) {
        log( "בחרת ב: " + ui.item.label );
      }
    } );
  } );
  </script>
</asp:Content>
