<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewSchools.ascx.cs" Inherits="Controls_ViewSchools" %>

  <div class="row">
        <div class="row inner-body">
            <div class="col-lg-9 left-body">
                <h1>
                    Schools List</h1>
                <div id="divSchools" runat="server" class="well well-lg">
                    <div class="heading">
                        <h2>
                            Select A School&nbsp;
                        </h2>
                    </div>
                    <div class="row section">
                        <div id="NewUser">
                        <div class="col-lg-2 text-right">
                        States
                        </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" placeholder="Select State"
                                         DataTextField="StateName" DataValueField="StateID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                              <div class="col-lg-2 text-right">
                        Disctricts
                        </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" placeholder="Select District"
                                        
                                        DataTextField="DistrictName" DataValueField="DistrictID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-4">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                       
                            <asp:GridView ID="gvSchoolsList" runat="server" 
                            AllowPaging="true" PageSize="30" 
                            CssClass="table table-responsive table-bordered" 
                            >
                                <Columns>
                                    <asp:TemplateField HeaderText="School Name">
                                        <ItemTemplate>
                                            <%#Eval("SchoolName") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address">
                                        <ItemTemplate>
                                            <%#Eval("Address") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                        <a href="javascript: Call('<%# Eval("SchoolID") %>')">View</a>
                                           <%-- <asp:LinkButton ID="lblView" runat="server" CommandArgument='<%# Eval("SchoolID") %>' >View</asp:LinkButton>--%></ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        
                    </div>
                </div>
                <div id="divVillageSchools" runat="server" class="well well-lg">
                   <div class="row section">
                     <div class="col-lg-4">
                     <h6>Village Name: &nbsp;<asp:Label ID="lblVillageName" runat="server"></asp:Label></h6>
                     </div>
                      <div class="col-lg-4">
                     <h6>District:&nbsp;<asp:Label ID="lblDiscrictName" runat="server"></asp:Label></h6>
                     </div>
                      <div class="col-lg-4">
                     <h6>State:&nbsp;<asp:Label ID="lblState" runat="server"></asp:Label></h6>
                     </div>
                     <div class="heading">
                        <h2>
                            Vist A School&nbsp;
                        </h2>
                    </div>
                     <div class="clearfix"></div>
                       
                            <asp:GridView ID="gvVillageSchools" runat="server" AutoGenerateColumns="false" 
                            AllowPaging="true" PageSize="30" 
                            CssClass="table table-responsive table-bordered" 
                           >
                                <Columns>
                                    <asp:TemplateField HeaderText="School Name">
                                        <ItemTemplate>
                                            <%#Eval("SchoolName") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address">
                                        <ItemTemplate>
                                            <%#Eval("Address") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                        <a href="javascript: Call('<%# Eval("SchoolID") %>')">View</a>
                                           <%-- <asp:LinkButton ID="lblView" runat="server" CommandArgument='<%# Eval("SchoolID") %>' >View</asp:LinkButton>--%></ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <div class="clearfix"></div>
                            <div class="col-lg-4">
                              <a href="#" class="btn btn-success" style="width:200px; font-size:24px;" >Adopt Village</a>
                            </div>
                   </div>
                </div>
            </div>
           
        </div>
    </div>


