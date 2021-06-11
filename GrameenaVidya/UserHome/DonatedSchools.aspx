<%@ Page Title="" Language="C#" MasterPageFile="~/Master/InsideMaster.master" AutoEventWireup="true" CodeBehind="DonatedSchools.aspx.cs" Inherits="GrameenaVidya.UserHome.DonatedSchools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    h2.headertekst {
  text-align: center;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row">
   <br />
 
   <h2 class="headertekst">Donated Schools</h2>
                            <div class="col-md-offset-1 col-md-11 edited-table2" id="divSchoolsDonated" runat="server" visible="false">
                                <asp:GridView ID="gvSchoolDonarList" runat="server"  AutoGenerateColumns="False" Width="90%" BorderWidth="0" CssClass="theader">
                                    <Columns>
                                     <asp:BoundField  DataField="PackageTypeName" HeaderText="Type of Donation">
                                            <ItemStyle></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField  DataField="SchoolName" HeaderText="Beneficiery Name">
                                            <ItemStyle></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField  DataField="PackageAmount" HeaderText="Amount Donated">
                                            <ItemStyle ></ItemStyle>
                                        </asp:BoundField>
                                        
                                        <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date">
                                            <ItemStyle></ItemStyle>
                                        </asp:BoundField> 
                                      
                                                                       
                                             <asp:TemplateField  HeaderText="Printable Tax Exemption Certificate">
                                           
                                            <ItemTemplate><a href="#">80 G Tax Exemption</a></ItemTemplate>
                                        </asp:TemplateField>
                                          
                                                                       
                                             <asp:TemplateField  HeaderText="Thank You Letters From Beneficiaries ">
                                            <ItemTemplate><a href="#">Thank You Letters From </a></ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField  HeaderText=" Beneficiary Pictures ">
                                            <ItemTemplate></ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <div class="Pager">
                                </div>
                            </div>

                             <div class="col-md-offset-1 col-md-11 edited-table2" id="gvpool" runat="server" visible="false">
                                <asp:GridView ID="gvgeneralpool" runat="server"  AutoGenerateColumns="False" Width="90%" BorderWidth="0" CssClass="theader">
                                    <Columns>
                                      
                                        <asp:BoundField  DataField="PackageAmount" HeaderText="Amount">
                                            <ItemStyle ></ItemStyle>
                                        </asp:BoundField>
                                       <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction_Date">
                                            <ItemStyle></ItemStyle>
                                        </asp:BoundField> 
                                                                       
                                            
                                          
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <div class="Pager">
                                </div>
                            </div>
                        </div>
</asp:Content>
