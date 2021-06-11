<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<div class="banner">
  
    <div id="carousel-example-generic" class="carousel slide banner-slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li> 
            <li data-target="#carousel-example-generic" data-slide-to="5"></li>          
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
               <a href="../AboutUS/about-background.aspx"> <img  src="../images/bnr/banner-1.jpg" alt="Charity banner template" /></a>
                <div class="carousel-caption col-md-8 col-md-offset-2">
                    <%--<h1>"Give a man a fish and you feed him for a day. Teach a man to fish and you feed him for a life time."</h1>--%>
                   <%-- <a href="#" class="btn btn-default btn-yellow">Learn more</a>--%>
                </div>
            </div>
            <div class="item">
                           <a href=""> <img src="../images/bnr-3.jpg" /></a>

                <div class="carousel-caption col-md-8 col-md-offset-2">
                    <%--<h1>"Creating a level playing field  understand one size does not fit all Improve achievement and retention"</h1>--%>
                   <%-- <a href="#" class="btn btn-default btn-yellow">Learn more</a>--%>
                </div>
            </div>
            <div class="item">
               <a href="../AboutUS/about-background.aspx"> <img src="../images/bnr-4.jpg" alt="Charity template" /></a>
                <div class="carousel-caption col-md-8 col-md-offset-2">
                    <!--banner caption start-->
                    <%--<h1>"Reducing The Digital Divide will reduce poverty and inequality"</h1>--%>
                  <%--  <a href="#" class="btn btn-default btn-yellow">Learn more</a>--%>
                </div>
                <!-- banner cpation close-->
            </div>            
           
              <div class="item">
               <a href="../AboutUS/about-background.aspx"> <img src="../images/bnr-6.jpg" alt="Charity template" /></a>
                <div class="carousel-caption col-md-8 col-md-offset-2">
                    <!--banner caption start-->
                    
                  <%--  <a href="#" class="btn btn-default btn-yellow">Learn more</a>--%>
                </div>
                <!-- banner cpation close-->
            </div>
            
             <div class="item">
                <a href="../Programs/adopt-a-village.aspx"> <img src="../images/bnr-7.jpg" alt="Charity template" /></a>
                <div class="carousel-caption col-md-8 col-md-offset-2">
                    <!--banner caption start-->
                    
                  <%--  <a href="#" class="btn btn-default btn-yellow">Learn more</a>--%>
                </div>
                <!-- banner cpation close-->
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                href="#carousel-example-generic" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                </span></a>
    </div>
</div>