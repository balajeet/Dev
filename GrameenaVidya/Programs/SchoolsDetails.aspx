<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolsDetails.aspx.cs" Inherits="GVSchools.Programs.SchoolsDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">

<!-- Important Owl stylesheet -->
<link rel="stylesheet" href="../css/owl.carousel.css">
<!-- Default Theme -->
<link rel="stylesheet" href="../css/owl.theme.css">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<link href="../css/custom.css" rel="stylesheet">



</head>
<body>
    <form id="form1" runat="server">
<div class="main-container view-school-popup"> <!-- main-container start -->
  <div class="container"> <!-- container start -->
    <div class="row">
      <div class="col-md-12"> 
	   
	  <div  class="school-info">
		
		<div class="col-md-4"> 
      
		 <asp:image  ID="imgMain" runat="server" class="img-responsive" ></asp:image>
		</div>
		
		<div id="divSchoolInfo" runat="server" class="col-md-8"> 
		
		</div>

     

      


      </div>		
      
	  </div>
    </div>
   
       <iframe id="Iframe2"  width="100%" height="500" src="../SchoolsDetails/<%=hdSchoolID.Value %>" scrolling="auto" frameborder="0" ></iframe>
   
	
	
	
	
	
	
<div class="banner">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> 
    <!-- Indicators -->
    <%--<ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>--%>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    <div class='item active'>
     <asp:Repeater ID="repImagesBind" runat="server" 
            onitemdatabound="repImagesBind_ItemDataBound">
     <ItemTemplate>
     <%--<asp:Image  ID="imgRepImages" runat="server"/>
     <asp:HiddenField  ID="hfImgId" runat="server" Value='<%# Eval("PicID") %>'/>--%>
     </ItemTemplate>
     </asp:Repeater>
     </div>
    </div>
    <!-- Controls --> 
   <%-- <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a> --%>
    </div>
</div>
<asp:HiddenField ID="hdSchoolID" runat="server" />
<!-- banner close --> 

 
  </div>
  <!-- container start --> 
</div>
<!-- main-container close --> 







<%--<!--  footer section -->
<div class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-4 kindness">
        <h2>Virtue Charity Template</h2>
        <p> Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim. Suspendisse at semper ipsum. </p>
        <ul class="list-style">
          <li>169 Nguyen Building,  Ngoc Vu Street, <br>
            Hanoi, Vietnam .</li>
          <li><i class="fa fa-phone-square"></i> +84-123 456 789</li>
          <li><i class="fa fa-envelope"></i> virtue@mail.com</li>
          <li>Registered charity number 123456.</li>
        </ul>
      </div>
      <div class="col-md-4 help"> <!-- help start -->
        <h2> How you can help ? </h2>
        <ul class="list-style">
          <li><a href="#">Donate</a></li>
          <li><a href="#">Become a Volunteer</a></li>
          <li><a href="#">Join our programm</a></li>
          <li><a href="#">Contact us</a></li>
          <li><a href="#">Gift for child</a></li>
        </ul>
      </div>
      <!-- help close -->
      <div class="col-md-4 news-letter"> <!-- news-letter start -->
        <h2> Newsletter</h2>
        <p> Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim. Suspendisse at semper ipsum. </p>
        <div class="input-group">
          <input type="text" class="form-control" placeholder="enter email addess">
          <span class="input-group-btn">
          <button class="btn btn-default btn-yellow" type="button">Go!</button>
          </span> </div>
        <!-- /input-group --> 
      </div>
      <!-- news-letter close --> 
    </div>
  </div>
</div>
<!--  footer section ending --> 
<!-- sub-footer -->
<div class="sub-footer">
  <div class="container">
    <div class="row">
      <div class="col-md-10">
        <p>© 2014 virtue. All rights reserved.  |  Terms and conditions </p>
      </div>
      <div class="col-md-2"> <a href="#"><i class="fa fa-facebook-square"></i></a> <a href="#"><i class="fa fa-twitter-square"></i></a> <a href="#"><i class="fa fa-flickr"></i></a> <a href="#"><i class="fa fa-youtube-square"></i></a> </div>
    </div>
  </div>
</div>--%>
<!-- sub-footer ending --> 
<!-- section --> 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../js/jquery-1.9.1.min.js"></script> 
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>

<script type="text/javascript">

    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
//    function SchoolData() {
//      

//        $("#Iframe2").attr("src", "../Schooldata/" + "123456" + ".html");
//    }
    $("#myModal").on('hidden.bs.modal', function () {
        window.location.reload();
    })
</script>
    </form>
</body>
</html>
