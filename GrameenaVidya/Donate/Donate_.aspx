<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="Donate_.aspx.cs" Inherits="GrameenaVidya.Donate.Donate_" %>
<%@ Register src="~/Controls/DonateControl.ascx" tagname="DonateControl" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-fluid pr-donate-new">
    <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <!-- How you can help box start -->
                    <div class="col-md-12">
                        <div class="sidebar-donate-blk">
                            <h3>Programs</h3>
                            <ul class="list-style">
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate.aspx" onclick="Javascript:CheckprogramType(1);">
                                    Adopt-a-School</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate.aspx" onclick="Javascript:CheckprogramType(2);">
                                    Adopt-a-Student</a></li>
                                <%--<li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Digital
                                    Libraries</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-Donar </a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-FAQ Libraries</a></li>--%>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="col-md-12 event-strips">
                        <div class="blk school-metric">
                            <h3>School Metrics</h3>
                            <marquee height="250" scrolldelay="150" direction="up">
                      <ul>
                      <li>India has <b>1.27 billion</b> people, 74% literacy rate.</li>
                      <li> World’s largest child and youth population is in India &ndash; <b>600 million</b> are below 24 years of age. (<b>480 million</b> child population)
                      There are <b>1.30</b> million schools in India.</li>
                      <li><b>220 million</b> students enroll in elementary schools every academic year, more than half drop out before class VIII. Only <b>55 million</b> are enrolled in secondary education (classes IX &ndash; XII)</li>
                      <li><b>96.7%</b> of the age <b>6-14</b> are enrolled in schools in rural India</li>
                      <li><b>120</b> million students are outside school.</li>
                      <li>There is a shortage of <b>700000</b> teachers countrywide.</li>
                      <li>Pupil &ndash; Teacher ratio is <b>49.3</b></li>
                      <li><b>9%</b> of the schools make do with 1 teacher who teaches multiple subjects and classes</li>
                      <li>Only <b>19%</b> of the students are enrolled in higher education (<b>80%</b> in USA and <b>28%</b> in China)</li>
                      <li><b>581</b> Universities and <b>35000</b> colleges enroll <b>20</b> million students in India. China has <b>1600</b> Universities and USA + Canada has over <b>9200</b> campuses.</li>
                      <li>During the past decade Government (State + Center) expenditure on education averaged <b>3.3</b> percent of the GDP.</li>
                      <li><b>53.4%</b> of the <b>5th</b> standard students surveyed could not read, write or solve arithmetic problems expected of children in 2nd standard.</li>
                      <li><b>25.4%</b> of the <b>8th</b> standard students could not read a <b>2nd</b> standard textbook.</li>
                      <li><b>32.5%</b> of the 2nd standard children cannot recognize letters as yet.</li>
                      <li>Percentage of schools with computers <b>19.6%</b></li>
                      <li><b>55.7%</b> of schools have usable girls toilets</li>
          
                      </ul></marquee>
                            <br>
                            <br>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-9 pr-steps">
            <uc4:DonateControl ID="DonateControl1" runat="server" />
            </div>
            </div>
            </div>

              <asp:HiddenField ID="hfDCPage" runat="server" Value="0" />
                <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
</asp:Content>
