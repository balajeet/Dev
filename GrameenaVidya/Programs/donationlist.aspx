<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="donationlist.aspx.cs" Inherits="GrameenaVidya.Programs.donationlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbBenfits").addClass("activelink");


      });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-md-12">
            <div class="donate">
                <h1>
                    Donations List</h1>                
                
                <asp:Repeater ID="repDonations" runat="server">
                <HeaderTemplate>
                <table class="view-school">
                    <thead>
                        <tr>
                            <td style="width:30%;">
                                School
                            </td>
                            <td style="width:30%;">
                                Donor
                            </td>
                            <td style="width:25%;">
                                State
                            </td>
                            <td style="width:15%;">
                                Donation Amount
                            </td>
                            
                        </tr>
                        <thead>
                            <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                <tr>
                                    <td>
                                        <%#Eval("SchoolName") %>
                                    </td>
                                    <td>
                                       <%#Eval("Name") %>
                                    </td>
                                    <td>
                                       <%#Eval("StateName") %>
                                    </td>
                                     <td style=" text-align:center;" >
                                        <%#Eval("Amount") %>
                                    </td>

                                   <%-- <td>
                                        <a href="#">View</a>
                                    </td>--%>
                                </tr>
                </ItemTemplate>
                <FooterTemplate>
                   </tbody>
                </table>
                </FooterTemplate>
                </asp:Repeater>
                
                             
            </div>
        </div>
    </div>

    
   <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
</asp:Content>
