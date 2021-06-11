<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="GrameenaVidya.Donate.Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script type="text/javascript" language="javascript">
    function disp_confirm() {

        if (confirm("Thank you for your contribution to Grameena vidya, and in joining us on this inspiring journey to provide the life long gift of education to lakhs of children in India!!! Please check your email for login credentials.")) 
        {
            alert("hi");

            window.location = "../UserHome/DashBoard.aspx";
           
          
        }
        else 
        {
            return false;
        }
    }

</script>
<br />&nbsp;

<div class="row">
    <div class="col-lg-10 col-lg-offset-1 text-center">Thank you for your contribution to Grameena vidya, and in joining us on this inspiring journey to provide the life long gift of education to lakhs of children in India!!! Please check your email for login credentials.</div><br />&nbsp;  
    <br />&nbsp;
</div>

    <div class="row">
        <div class="col-lg-10 col-lg-offset-1 text-center"><h2>Your Transaction Details</h2><br /></div>
    </div>
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 panel panel-default">
        
            <table class="table table-condensed">
                <tr>
                    <td>Transaction ID:</td>
                    <td><b><asp:Label ID="lblTransactionID" runat="server" ></asp:Label></b></td>
                </tr>
                <tr>
                    <td>Cheque Favoring:</td>
                    <td><b><asp:Label ID="lblChequeFvoring" runat="server"></asp:Label></b></td>
                </tr>
                <tr>
                    <td>Amount:</td>
                    <td><b><asp:Label ID="lblAmount" runat="server"></asp:Label></b></td>
                </tr>
                <tr>
                    <td>Please Send Cheque To:</td>
                    <td><b>
                  <%--  <asp:Label ID="lblAddress" runat="server"></asp:Label>--%>
                  TeachLearnWeb.com
D.No: 3-13, Near Sagar Nagar,
Visakhapatnam 530045, India.
                    </b></td>
                </tr>

            </table>
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 text-center">
       <a href="../UserHome/DashBoard.aspx" class="btn btn-success" style="width:150px;" >Done</a>
            <%--<button class="btn btn-success" style="width:150px;"></button>
            <button class="btn btn-primary" style="width:150px;">Print</button>--%>
        
        </div>
        
    </div>
     <br />
</asp:Content>
