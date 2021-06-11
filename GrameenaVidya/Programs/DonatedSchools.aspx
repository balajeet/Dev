<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="DonatedSchools.aspx.cs" Inherits="GrameenaVidya.Programs.DonatedSchools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="main-container">
        <!-- main-container start -->
        <div class="container">
            <!-- container start -->
            <div class="row">
                <div class="col-md-9 col-sm-9">
                    <div class="do2nate" style="margin-top: -100px;">
                      
                        <div class="row">
                            <div class="col-md-12">
                                <asp:GridView ID="GvDonarList" runat="server" CssClass="view-school edited-table"
                                    AutoGenerateColumns="False" Width="100%" BorderWidth="0" Style="display: none;">
                                    <Columns>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Status" HeaderText="Status">
                                            <ItemStyle Width="10%"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="SchoolName" HeaderText="SchoolName">
                                            <ItemStyle Width="25%"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Address" HeaderText="Address">
                                            <ItemStyle Width="50%"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Strength" HeaderText="Strength">
                                            <ItemStyle Width="15"></ItemStyle>
                                        </asp:BoundField>
                                             <asp:BoundField ItemStyle-Width="150px" DataField="Details" HeaderText="Details">
                                            <ItemStyle Width="15"></ItemStyle>
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <div class="Pager">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               <%-- <div  class="col-md-3 col-sm-3" >    
                <div  class="well bs-sidebar affix" id="sidebar"><h4>Selected Schools List:</h4>            
                <table id="tableSchools"  class="table"><thead><tr><th>SchoolName</th><th>Classes</th><th>No of Years</th><th>Total Cost</th></tr></thead>
                
                <tbody>

                </tbody>
                </table>
                </div>
                </div>--%>
            </div>
        </div>
        <!-- container start -->
    </div>
</asp:Content>
