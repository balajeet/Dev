<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubscriptionDetails.ascx.cs" Inherits="GrameenaVidya.Controls.SubscriptionDetails" %>


<div class="row">

 <div class= "col-lg-10 col-lg-offset-1">

<h2>SubScription Details</h2>
<hr class="devider" />

<asp:UpdatePanel ID="upProfile" runat="server"><ContentTemplate>

            <div class="form-group">
               <asp:GridView ID="gvSubscriptionDetails" AutoGenerateColumns="false" runat="server" Width="100%" CssClass="table table-bordered school-list">
               
               
                   <Columns>
                    
                       <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" />
                       <asp:BoundField DataField="PackageAmount" HeaderText="PackageAmount" />
                       <asp:BoundField DataField="AdoptType" HeaderText="AdoptType" />
                       <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" />
                       <asp:BoundField DataField="DistrictName" HeaderText="DistrictName" />

                   </Columns>
               
               
               </asp:GridView>
            </div>

           
</ContentTemplate></asp:UpdatePanel>

</div>  


</div>