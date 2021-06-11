<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeBehind="media.aspx.cs" Inherits="GrameenaVidya.Programs.media" %>

<%@ Register Src="../Controls/MediaControl.ascx" TagName="MediaControl" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <script type="text/javascript">
        function iframeLoaded() {
            var iFrameID = document.getElementById('idIframe');
            if (iFrameID) {
                // here you can make the height, I delete it first, then I make it again
                iFrameID.height = "";
                iFrameID.height = iFrameID.contentWindow.document.body.scrollHeight + "px";
            }
        }

        function fbs_click() {
            u = "sdoifjijfijfijfisjdfijidfjidjf";
            t = document.title; window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(u) + '&t=' + encodeURIComponent(t), 'sharer', 'toolbar=0,status=0,width=626,height=436');
            return false;
        }
    
     function popupwindowAtCenter(url, title, w, h) {
            var left = (screen.width / 2) - (w / 2);
            var top = (screen.height / 2) - (h / 2);
          //  return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
            var u = location.href;
            
            window.open('http://www.facebook.com/sharer.php?u=' + u);
           
        } 
      
        $(document).ready(function () {            
            var iFrameID = document.getElementById('idIframe');
            iFrameID.src = "media1/events/eventAug2015.aspx";            
        });
    </script>

    <script>
        function submitfeedback() {
            var feedback = document.getElementById("<%=txtFeedback.ClientID %>");
            var errorfeedback = document.getElementById("lbFeedback");
            var description = document.getElementById("<%=txtDescription.ClientID %>");
            var errordescription = document.getElementById("lbDescription");
            var emailid = document.getElementById("<%=txtEmailID.ClientID %>");
            var erroremailid = document.getElementById("lbEmailid");

            var feedbackstatus, descriptionstatus, emailstatus;


            if (feedback.value != "") {
                errorfeedback.innerHTML = "";
                errorfeedback.className += "";
                feedbackstatus = true;
            }
            else {
                errorfeedback.className += "label label-danger";
                errorfeedback.innerHTML = "Enter your feedback";
                feedbackstatus = false;
            }
            if (description.value != "") {
                errordescription.className += "";
                errordescription.innerHTML = "";
                descriptionstatus = true;
            }
            else {
                errordescription.className += "label label-danger";
                errordescription.innerHTML = "Enter your feedback description";
                descriptionstatus = false;
            }
            if (emailid.value != "") {
                erroremailid.className += "";
                erroremailid.innerHTML = "";
                emailstatus = validateEmail(emailid.value);
                if (emailstatus == false) {
                    erroremailid.className += "label label-danger";
                    erroremailid.innerHTML = "Enter a valid emailid";
                }
            }
            else {
                erroremailid.className += "label label-danger";
                erroremailid.innerHTML = "Enter a valid emailid";
                emailstatus = false;
            }
            if (feedbackstatus == true && descriptionstatus == true && emailstatus == true) {
                var lbtn = document.getElementById("<%=lbtnSubmit.ClientID %>");
                lbtn.click();
            }
        }

        function validateEmail(email) {
            var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
            return re.test(email);
        }
    </script>


   


<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">    stLight.options({ publisher: "f6e84229-79a1-4a90-85fe-2c8ae149e8e5", doNotHash: false, doNotCopy: false, hashAddressBar: false });</script>

    <style>
    .photo-gallery
    {
      margin-top:20px;  
        
        }
        
        .Events-panel-content
        {
            border:1px solid #e5e5e5;
            border-radius:5px;
            padding:5px;
            margin-bottom:10px;
            
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="photo-gallery">
        <div class="container">
            <div class="row">
            <div class="col-lg-9">
            <h1 class="page-heading">
                    Events/Media
                </h1>
            </div>

             <div class="col-lg-3 "><br />
             <a  style="cursor:pointer;" title="Email This Page" data-toggle="modal" data-target="#myModal"><i class="fa fa-envelope"></i></a>&nbsp;
             <a href="#" title="Print this page"><i class="fa fa-print"></i></a>&nbsp;
             <a style="cursor:pointer;" title="Feedback Enquiry" data-toggle="modal" data-target="#myFeedback" ><i class="fa fa-pencil-square-o" ></i></a>
         
            </div>
           
                <div class="col-lg-3">
                </div>
                <div class="clearfix"></div>
                <div class="col-md-3">
                    <uc1:MediaControl ID="MediaControl1" runat="server" />
                </div>
                <div class="col-md-6 Events-panel-content">
                    <iframe id="idIframe" src="" onload="iframeLoaded()" 
                        width="100%" frameborder="0" scrolling="no"></iframe>
                    
                </div>
                <div class="col-md-3">
                 
              
                <div class="col-md-12 testimonials event-strips">
               
                    <div class="blk school-metric">
                        <h2>
                            School Metrics</h2>
                        <marquee direction="up" scrolldelay="150" height="250">
          <ul>
          <li>India has <b>1.27 billion</b> people, 74% literacy rate.</li>
          <li> World’s largest child and youth population is in India – <b>600 million</b> are below 24 years of age. (<b>480 million</b> child population)
          There are <b>1.30</b> million schools in India.</li>
          <li><b>220 million</b> students enroll in elementary schools every academic year, more than half drop out before class VIII. Only <b>55 million</b> are enrolled in secondary education (classes IX – XII)</li>
          <li><b>96.7%</b> of the age <b>6-14</b> are enrolled in schools in rural India</li>
          <li><b>120</b> million students are outside school.</li>
          <li>There is a shortage of <b>700000</b> teachers countrywide.</li>
          <li>Pupil – Teacher ratio is <b>49.3</b></li>
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
                    </div>
                         <br />
                    <div class="clearfix">
                    </div>
                    <div class="blk">
                        <h2>
                            Video Testimonials
                        </h2>
                        <div class="pic">
                            <a href="../Programs/video-gallery.aspx">
                                <img src="../images/Testmonials/prasad-garu.jpg" class="img-responsive" alt=""></a></div>
                        <p>
                            Video Testimonials Describing Grameena vidya and benifits of smart class room...<a
                                href="../Programs/video-gallery.aspx"><small style="color: Green;">View Testmonials</small></a></p>
                    </div>
                </div> 
           
                      <div class="col-md-12">
                
                  <br /><br />

                  Share this post<br /><br />
<span class='st_facebook_large'></span>
<span class='st_twitter_large'></span>
<span class='st_googleplus_large'></span>

<a class="newSpriteIcons facebook" target="_blank" onclick="popupwindowAtCenter(this.href,'Share on Facebook',600,600);return false;">facebook</a>

</div>
                 </div>







            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header modal-header2">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H2">
                      <i class="fa fa-envelope"></i> Email This Page</h4>
                </div>
                <div class="modal-body modal-body2">
                  
                        <div class="form">
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                   From Email address</label>
                                   <asp:TextBox ID="txtFromEmail" runat="server" CssClass="form-control" placeholder="Email"> </asp:TextBox>                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                   From Email address</label>
                                   <asp:TextBox ID="txtEmails" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="To Share Enter the Email id and use comma separate"> </asp:TextBox>                                
                            </div>
                            <div class="clearfix"></div>
                            <p>To share enter the email id and use comma separate exmaple : example@gmail.com</p>
                             <div class="form-group">
                                <label for="exampleInputEmail1">
                                   Messeage</label>
                                   <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Email"> </asp:TextBox>                                
                            </div>
                        </div>
                  
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-yellow" data-dismiss="modal">
                        Close</button>
                    <input type="button" class="btn btn-default btn-yellow" value="Send" id="btnclose"
                        onclick="javascript:Test();" />
                    <asp:LinkButton ID="lbtnSubmit" runat="server" OnClick="lbtnSubmit_Click" ></asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myFeedback" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header modal-header2">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">
                        <i class="fa fa-pencil-square-o"></i> Feedback Form </h4>
                </div>
                <div class="modal-body modal-body2">
                    <p>
                        Please let us know your feedbacks</p>
                    <div class="form">
                        <div class="form-group">
                        <asp:TextBox ID="txtFeedback" runat="server" CssClass=" form-control" placeholder="Enter Your Feedback *"></asp:TextBox>
                        <span id="lbFeedback" ></span>
                       <%-- <asp:Label ID="lblFeedback" runat= "server" CssClass=" label label-danger" Text=" Enter the feedback" style=" display:none;"> </asp:Label>--%>
                        </div>
                    </div>
                    <div class="form">
                        <div class="form-group">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass=" form-control" placeholder="Enter Your description of Feedback"></asp:TextBox>
                       <span id="lbDescription">  </span>
                        <%--<asp:Label ID="lblDescription" runat= "server" CssClass=" label label-danger" Text=" Enter the feedback description" style=" display:none;"> </asp:Label>--%>
                        </div>
                    </div>
                    <div class="form">
                        <div class="form-group">
                        <asp:TextBox ID="txtEmailID" runat="server" CssClass=" form-control" placeholder="Enter Your EmailID *"></asp:TextBox>
                            <span id="lbEmailid" ></span>
                        <%--<asp:Label ID="lblEmailid" runat= "server" CssClass="label label-danger" Text=" Enter a valid emailid" style="display:none;"> </asp:Label>--%>
                        </div>
                    </div>
                </div>
                 <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-yellow" data-dismiss="modal">
                        Close</button>
                    <input type="button" class="btn btn-default btn-yellow" value="Send" id="Button1"
                        onclick="javascript:submitfeedback();" />
                </div>
            </div>
        </div>
    </div>

    <%--<script src="../js/jquery-1.9.1.min.js" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js" ></script>
    <script src="../js/script.js" ></script>
    <script src="../js/owl.carousel.js" ></script>--%>
</asp:Content>
