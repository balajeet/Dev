<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderOutside.ascx.cs" Inherits="GrameenaVidya.Controls.HeaderOutside" %>
<%@ Register src="DonorLogin.ascx" tagname="DonorLogin" tagprefix="uc1" %>
<!-- Logo Container ................. -->
<div class="con4tainer">
<div class="row">
<div class="col-lg-8">
	<div class="logo-box"><a href="~/Default.aspx" runat="server"><img src="~/img/logo.png" runat="server" /></a></div>
</div>



	
<div class="col-lg-4 text-right">			
<%--<div class="col-lg-2 text-right"><a href="download/grameena-vidya.rar" class="btn btn-warning brochure-button">Brochure<i class="glyphicon glyphicon-save"></i></a></div>--%>
<a href="~/donate" runat="server" class="btn btn-warning login-button donate2">Donate<i class="glyphicon glyphicon-gift"></i></a>
			
<a  data-toggle="modal" data-target="#myModal" class="btn btn-success login-button">login<i class="glyphicon glyphicon-circle-arrow-right"></i></a>

    </div>

    </div>

			

</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Login</h4>
      </div>
      <div class="modal-body">

        <uc1:DonorLogin ID="DonorLogin1" runat="server" />
      </div>
     
    </div>
  </div>
</div>
