<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderInside.ascx.cs" Inherits="GrameenaVidya.Controls.HeaderInside" %>
<!-- Logo Container ................. -->



<div class="con4tainer">
<div class="row">
<div class="col-lg-8">
	<div class="logo-box"><img id="Img1" src="~/img/logo.png" runat="server" /></div>
</div>



	
<div class="col-lg-4 text-right">			

<asp:LinkButton ID="lblLogout" class="btn btn-success login-button" runat="server" 
        onclick="lblLogout_Click">Logout</asp:LinkButton>			


    </div>

    </div>

			

</div>

