<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="PaymentStatus.aspx.cs" Inherits="GrameenaVidya.Donate.PaymentStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />&nbsp;
    <div id="divSuccess" runat="server">
    

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
                    <td>Amount:</td>
                    <td><b><asp:Label ID="lblAmount" runat="server"></asp:Label></b></td>
                </tr>
                

            </table>
        </div>
    </div>

    </div>


    <div id="divFailure" class="erorr" runat="server">
        <h2><span class="order-failure">Transaction Failure.</span></h2>
                <div>
                    We are unable to obtain, authorization for your credit card / debit your online bank account, 
                    <br />
                    for your order at http://www.teachlearnweb.com ; due to the following reason :<br />
                    &nbsp;<br />
                    Invalid CardNumber / Expiry Date or Insufficent Funds

                    <br />
                    <br />
                    We invite you to visit http://www.teachlearnweb.com once more to place this order, 
                    <br />
                    using another credit card or online bank account.

                    <br />
                    <br />
                    Thank you for your patronage.     

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
