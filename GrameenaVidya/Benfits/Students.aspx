<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Benfits_Students" %>

<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class=""><!--  Main-container section -->
  <div class="causes">
    <div class="container">
      <div class="row">
        <div class="col-md-8"> <!-- progaram detail start -->
         <h1>Students</h1>    
		
          <p>Students at the bottom of the pyramid have low achievement levels due to social, economic and geographic constraints. With Grameena Vidya</p>
		  
		     
		    
		  
		     
		 <div class="col-md-12 indi-list"> <!-- Orderd start -->
         <ol>
          <li>Students get to learn at their own pace anywhere and anytime.</li>
          <li>Students get multimedia learning content in multiple formats that are tailored to each student on the premise that “one size does not fit all.”</li>
          <li>Unlike urban private schools, students in rural or Govt. schools don’t have good facilities – low level of infrastructure, few teaching aids, lack of specialized teachers, - Grameena Vidya’s smart schools provides a way out by creating a “level playing field” for both urban and rural students. </li>
          <li>Regular assessments and 24/7 access to multiple learning artifacts provide immense opportunities to acquire skills, score high, achieve more and succeed in the 21st century competition.</li>         
        </ol>
      </div>
		 
         
		
		 
		 
        </div>
        <!-- progaram detail close -->
     <uc1:Aside_right ID="Aside_right1" runat="server" />
        <!-- sidebar section dending --> 
      </div>
    </div>
   
  </div>
</div>


<script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
</asp:Content>

