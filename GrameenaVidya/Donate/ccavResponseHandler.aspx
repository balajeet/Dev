<%@ Page Language="C#" AutoEventWireup="true" Inherits="ResponseHandler" Codebehind="ccavResponseHandler.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../CSS/bootstrap.css" rel="stylesheet" />
        <link href="../CSS/component.css" rel="stylesheet" />
          
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;">
        
        <div id="divSuccess" runat="server">
            <br />
            <br />
            

            <h3>Payment Successfull</h3>
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">Thank you for your contribution to Grameena vidya, and in joining us on this inspiring journey to provide the life long gift of education to lakhs of children in India!!! Please check your email for login credentials.</div><br />&nbsp;  
                <br />&nbsp;
            </div>
            <h4>Your Order ID: <asp:Label ID="lblStatusSuccess" runat="server"></asp:Label></h4>
            
            <a href="../Home.aspx">Go to Home</a>
        </div>

        <div id="divError" runat="server" visible="false">
            <br />
            <br />
            <h4 style="color:Red;">Your Payment Not Successfull</h4>
            <p>Please go to donate page and try again</p><br>
            <a href="Donate.aspx" >Try again</a>

        </div>

    </div>
    </form>
</body>
</html>
