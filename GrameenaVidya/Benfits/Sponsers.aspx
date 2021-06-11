<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="Sponsers.aspx.cs" Inherits="Benfits_Sponsers" %>

<%@ Register src="../Controls/Aside_right.ascx" tagname="Aside_right" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class=""><!--  Main-container section -->
  <div class="causes">
    <div class="container">
      <div class="row">
        <div class="col-md-8"> <!-- progaram detail start -->
         <h1>Benefits from Involvements</h1>    
		
            
		
          <p>By participating in an Adopt-a-School program and Adopt-a-Village program, you are investing in the future of our Society. Participation will contribute to increasing the quality of teaching and learning, and reducing digital divide which has tremendous consequences on social and economic inequalities and economic growth. Students and teachers in the program will grow in their understanding of your good will and its positive contributions to our way of life. Sponsors can realize tax-savings through their monetary donations, and volunteers will gain from their sense of accomplishment, teamwork and enjoyment.</p>
		  <p>In “Adopt-a-School” program individuals or groups generally work with a school to provide volunteers or financial resources to support instruction in the classroom. The beneficiary school can be from a list of prospects identified by Grameena Vidya or you can suggest a school. Aid may be provided to a single classroom or program within a school, or it may be a school or even system-wide initiative. Likewise, support may be furnished by a single individual, or a larger group.</p>
		 
         
		
		 
		 
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

