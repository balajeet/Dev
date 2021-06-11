<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true"
    CodeBehind="Donate.aspx.cs" Inherits="GrameenaVidya.Donate.Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.min.js"></script>
    <style>
.donate-input
{
    background-color: white;
    border: 1px solid #cccccc;
    border-radius: 0;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset;
    box-sizing: border-box;
    color: rgba(0, 0, 0, 0.75);
    display: block;
    font-family: inherit;
    
    height: 3.3125rem;
    margin: 0 0 1rem;
    padding: 0.5rem;
    transition: box-shadow 0.45s ease 0s, border-color 0.45s ease-in-out 0s;
    width: 100%;        
    }
    
    .radio-check
    {
          
    
    m/argin-bottom: 10px;
    m/rgin-top: 10px;
    m/in-height: 20px;
    position: relative;     
    font-size:12px;
    font-weight:100;    
     margin-right:10px;
    }
    
    .donate-label
    {
        color:#666;
        font-weight:700;
        font-size:16px;
        margin-top:30px;
        margin-bottom:20px;
        
        }
        
        .radio label, .checkbox label
        {
            padding-left:3px;
            
            }
            
           
    
     .radio-check label
         {
             font-weight:normal;
         }
        .overlay3
        {
            background: transparent url(../images/overlay.png) repeat top left;
            position: fixed;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            z-index: 100;
        }
        
        .box4
        {
            position: fixed;
            top: 300px;
            left: 50%;
            background-color: #fff;
            color: #7F7F7F;
            border: 0px solid #555;
            -moz-border-radius: 20px;
            border-radius: 3px;
            -moz-box-shadow: 0 1px 5px #333;
            -webkit-box-shadow: 0 1px 5px #333;
            z-index: 101;
            box-shadow: 0px 2px 10px #333333;
            width: 60px;
            height: 60px;
            padding: 15px;
        }
        
        .box3
        {
            position: fixed;
            top: -1000px;
            left: 10%;
            right: 10%;
            background-color: #fff;
            height: 250px;
            color: #7F7F7F;
            border: 0px solid #555;
            -moz-border-radius: 20px;
            border-radius: 3px;
            -moz-box-shadow: 0 1px 5px #333;
            -webkit-box-shadow: 0 1px 5px #333;
            z-index: 1000;
            box-shadow: 0px 2px 10px #333333;
            padding: 30px 20px 10px 20px;
        }
        
        a.boxclose3
        {
            float: right;
            margin-top: -23px;
            margin-right: -10px;
            cursor: pointer;
            font-size: 20px;
            font-weight: bold;
            color: #999999;
        }
        
        .mylabel
        {
            padding: 5px;
            border: 1px solid #e5e5e5;
        }
        
        .radio-toolbar input[type="radio"]
        {
            display: none;
            cursor: pointer;
        }
        
        .radio-toolbar label
        {
            display: inline-block;
            padding: 6px 6px;
            cursor: pointer;
        }
        
        .radio-toolbar input[type="radio"]:checked + label
        {
            padding: 6px 6px;
            background-color: #7bae4e;
            cursor: pointer;
        }
        
        .sidebar-donate {
    background:#F8F8F8;
    border:1px solid #e5e5e5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 20px 30px;
     font-size:14px;
    
}

   .sidebar-donate-blk {
    background:#e5e5e5;
    border:1px solid #d5d5d5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 20px 30px;
     font-size:14px;
    
}
    </style>
    
    <script>

        function openModal(StudentID) {
          
            debugger;
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Donate.aspx/GetDonersList",
                data: "{'StudentID':'" + StudentID + "'}",
                dataType: "json",
                success: function (Result) {
                    alert("hi");
                    debugger;
                    var Data = Result.d;
                    var table = $('<table><tr><th>UserID</th><th>Name</th><th>EmailAddress</th></tr></table>');

                    for (var i = 0; i < Data.length; i++) {
                        var row = "<tr><td>" + data[i].UserID + "</td><td>" + data[i].Name + " </td><td>" + data[i].EmailAddress + " </td></tr>";
                        table.append(row);
                    }
                    $("#divmodal").append(table);


                    $('#myModal').modal('show');
                },
                error: function () {
                }
            });



        }
      
    </script>
    <%-- <script type="text/javascript">
        function Calculate(txtcntrlname, StudentID, lblcntrlname) {
            debugger;
            var textBox1Ref = document.getElementById(txtcntrlname);
            var textBox1Value = parseInt(textBox1Ref.value);          
            var ActualAmount = parseInt(lblcntrlname);
            var RemainingAmount = 0;          
           
            if (isNaN(textBox1Value) == true)
             textBox1Value = 0;
            if (textBox1Value > 0) {

                if (textBox1Value > ActualAmount) {
                    swal(
                    'Contribuation should not be exceed beyond Donate amount!',
                    '',
                    'error'
                );
                    document.getElementById(txtcntrlname).value = "";
                    return false;
                }              

               // document.getElementById("<%=hfDonates.ClientID%>").Value = StudentID + "_" + textBox1Value;

                document.getElementById("<%=hfDonates.ClientID%>").Value = textBox1Value;

                alert(textBox1Value);

//                    RemainingAmount = ActualAmount - textBox1Value;
//                        $.ajax({
//                            type: "POST",
//                            contentType: "application/json; charset=utf-8",
//                            url: "Donate.aspx/UpdateStudentData",
//                            data: "{'Contribute':'" + textBox1Value + "','RemainingAmount':'" + RemainingAmount + "','StudentID':'" + StudentID + "'}",
//                            dataType: "json",
//                            success: function (Data) {
//                                SelectPackage(4)
//                            },
//                            error: function () {
//                            }
//                        });

            }
        } 

      

    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="row">
                    <!-- How you can help box start -->
                    <div class="col-md-12">
                        <div class="sidebar-donate-blk">
                            <h3>
                                Programs</h3>
                            <ul class="list-style">
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate_New.aspx" onclick="Javascript:CheckprogramType(1);">
                                    Adopt-a-School</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="Donate_New.aspx" onclick="Javascript:CheckprogramType(2);">
                                    Adopt-a-Village</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Digital
                                    Libraries</a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-Donar </a></li>
                                <li><i class="fa fa-angle-double-right"></i><a href="../AboutUS/about-model.aspx">Tax
                                    Exception-FAQ Libraries</a></li>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="col-md-12 event-strips">
                        <div class="blk school-metric">
                            <h2>
                                School Metrics</h2>
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
            <div class="col-md-9">
                <div class="sidebar-donate">
                    <h1>
                        Donate for</h1>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color: Green; margin-right: 5px;">Step 1 :</span>Select Package
                            </label>
                        </div>
                    </div>
                    <%--PACKAGE TYPES--%>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:RadioButton ID="rdbPackage1" CssClass="radio" runat="server" Text="Digital Patasala"
                                onclick="Javascript:SelectPackage(1);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage2" CssClass="radio" runat="server" Text="Digital Classroom"
                                onclick="Javascript:SelectPackage(2);" GroupName="Package" />
                        </div>
                        <div class="col-md-4">
                            <asp:RadioButton ID="rdbPackage3" CssClass="radio" runat="server" Text="Adopt-a- School"
                                onclick="Javascript:SelectPackage(3);" GroupName="Package" />
                            <asp:RadioButton ID="rdbPackage4" CssClass="radio" runat="server" Text="Adopt-a- Student"
                                onclick="Javascript:SelectPackage(4);" GroupName="Package" />
                        </div>
                        <div class="col-md-3">
                            <asp:RadioButton ID="rdbPackage5" CssClass="radio" runat="server" Text="Other" onclick="Javascript:SelectPackage(5);"
                                GroupName="Package" />
                        </div>
                    </div>
                    <%--DIGITAL PATASALA--%>
                    <div id="divDigitalPatasala" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>Digital Patasala
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:DropDownList ID="ddlBoard" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select Board</asp:ListItem>
                                    <asp:ListItem Value="1">CBSE</asp:ListItem>
                                    <asp:ListItem Value="2">SSC</asp:ListItem>
                                    <asp:ListItem Value="3">ICSE</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList ID="ddlClass" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="1">Class 1</asp:ListItem>
                                    <asp:ListItem Value="2">Class 2</asp:ListItem>
                                    <asp:ListItem Value="3">Class 3</asp:ListItem>
                                    <asp:ListItem Value="4">Class 4</asp:ListItem>
                                    <asp:ListItem Value="5">Class 5</asp:ListItem>
                                    <asp:ListItem Value="6">Class 6</asp:ListItem>
                                    <asp:ListItem Value="7">Class 7</asp:ListItem>
                                    <asp:ListItem Value="8">Class 8</asp:ListItem>
                                    <asp:ListItem Value="9">Class 9</asp:ListItem>
                                    <asp:ListItem Value="10">Class 10</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlPackage" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select Package</asp:ListItem>
                                    <asp:ListItem Value="500">Combo (Class 1-5) - Rs.500/-</asp:ListItem>
                                    <asp:ListItem Value="599">Math (Class 6-10) - Rs.599/-</asp:ListItem>
                                    <asp:ListItem Value="599">Science (Class 6-10) - Rs.599/-</asp:ListItem>
                                    <asp:ListItem Value="999">Combo (Class 6-10) - Rs.999/-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div id="divSchool" class="package">
                        <%--SCHOOL--%>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>Adopt-a-School</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-5 col-md-offset-1">
                                <asp:TextBox ID="txtname" CssClass="donate-input" Width="100%" runat="server" placeholder="Enter School Name"></asp:TextBox>
                                <asp:TextBox ID="txtAddress" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Address "></asp:TextBox>
                                <asp:TextBox ID="txtSchoolAmount" Text="50000" CssClass="donate-input" Width="100%"
                                    runat="server" placeholder="Enter Donation Amount"></asp:TextBox>
                            </div>
                            <div class="col-md-5">
                                <asp:DropDownList ID="ddlStates" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select State</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlDistricts" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select District</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlLocations" runat="server" CssClass="donate-input">
                                    <asp:ListItem Value="0">Select Location</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <%--STUDENT--%>
                    <div id="divStudent" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>ADOPT STUDENT</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-11 col-md-offset-1 edited-table2">
                                <asp:GridView ID="gvStudents" runat="server"  CssClass="thead" AutoGenerateColumns="false"
                                    OnRowCommand="gvStudents_RowCommand">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Student" onclick="RadioCheck(this);" />
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("StudentID")%>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField Visible="false" ItemStyle-Width="150px" DataField="StudentID" HeaderText="StudentID" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="StudentName" HeaderText="Student Name" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Class" HeaderText="Class" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Amount" HeaderText="Donate" />
                                        <asp:TemplateField HeaderText="Contribute Amount">
                                            <ItemTemplate>
                                                <asp:TextBox Width="100%" ID="txtdonate" CssClass="donate-input" placeholder='<%#Eval("Amount")%>'
                                                    runat="server"></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="View Doners">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkBtnEdit" runat="server" CommandArgument='<%# Eval("StudentID")%>'
                                                    CommandName="ViewDoner" Text="View" CssClass="btn btn-info" 
                                                   ></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;</button>
                                    <h4 class="modal-title">
                                        Doners List</h4>
                                </div>
                                <div class="modal-body">
                                    <div id="divmodal" class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-info" data-dismiss="modal">
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--CLASSROOM--%>
                    <div id="divClassroom" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>DONATE CLASSROOM</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:RadioButton ID="rd1" CssClass="radio" runat="server" Text="Rs. 17500 to Content"
                                    ToolTip="17500" onclick="Javascript:SelectAmountID(1,17500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd2" CssClass="radio" runat="server" Text="Rs. 25500 to Smart Content"
                                    ToolTip="25500" onclick="Javascript:SelectAmountID(2,25500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd3" CssClass="radio" runat="server" Text="Rs. 50500 to Hardware"
                                    ToolTip="50500" onclick="Javascript:SelectAmountID(3,50500);" GroupName="dcr" />
                            </div>
                            <div class="col-md-5">
                                <asp:RadioButton ID="rd4" CssClass="radio" runat="server" Text="Rs. 50500 to Smart Content"
                                    ToolTip="50500" onclick="Javascript:SelectAmountID(4,50500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd5" CssClass="radio" runat="server" Text="Rs. 17500 to Hardware"
                                    ToolTip="17500" onclick="Javascript:SelectAmountID(5, 17500);" GroupName="dcr" />
                                <asp:RadioButton ID="rd6" CssClass="radio" runat="server" Text="Rs. 25500 to Content"
                                    ToolTip="25500" onclick="Javascript:SelectAmountID(6, 25500);" GroupName="dcr" />
                            </div>
                        </div>
                    </div>
                    <%--OTHER--%>
                    <div id="divOther" class="package">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 2 :</span>OTHER</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtOtherAmount" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Other Amount"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%--DONAR NAME--%>
                    <div class="divDonarDetails">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="donate-label">
                                    <span style="color: Green; margin-right: 5px;">Step 3 :</span>Donar Details</label></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtDonarname" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDonarEmail" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Email Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtDonarAddress" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Address1"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDonarLocation" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="Address2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:DropDownList ID="ddlcountry" CssClass="donate-input" runat="server" DataTextField="Countryname"
                                    AutoPostBack="true" DataValueField="CountryID" Width="100%" Visible="false" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:TextBox ID="txtDonarCountry" CssClass="donate-input" placeholder="Country Name"
                                    runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlState1" CssClass="donate-input" runat="server" Width="100%"
                                    Visible="false" onchange="BindDonarStateID();">
                                </asp:DropDownList>
                                <asp:TextBox ID="txtDonarState" CssClass="donate-input" placeholder="State Name"
                                    runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:TextBox ID="txtDonarPin" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="pincode"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDonarMobile" CssClass="donate-input" Width="100%" runat="server"
                                    placeholder="MobileNumber"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <%--DONATION MODE--%>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="donate-label">
                                <span style="color: Green; margin-right: 5px;">Step 4 :</span>Donation Mode</label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <asp:RadioButton ID="rbdebit" CssClass="radio" runat="server" Text="Debit Card" onchange="javascript:GetDonationmodeID(1);"
                                GroupName="PaymentMode" />
                            <asp:RadioButton ID="rbcredit" CssClass="radio" runat="server" Text="Credit Card"
                                onchange="javascript:GetDonationmodeID(2);" GroupName="PaymentMode" />
                        </div>
                        <div class="col-md-8">
                            <asp:RadioButton ID="rbnetbanking" CssClass="radio" runat="server" Text="Net Banking"
                                onchange="javascript:GetDonationmodeID(3);" GroupName="PaymentMode" />
                            <asp:RadioButton ID="rbchequee" CssClass="radio" runat="server" Text="Write a Chequee/DD"
                                onchange="GetCheckOptions(4);" GroupName="PaymentMode" />
                            <div class="row" id="divcheck" style="display: none;">
                                <div class="col-md-12 col-md-offset-1">
                                    <asp:RadioButton ID="rbchcollect" CssClass="radio-check" runat="server" Text="&nbsp; Collect the check"
                                        onchange="javascript:GetCheckpickUpID(1);" GroupName="PaymentMode" />&nbsp;
                                    <asp:RadioButton ID="rbchpost" CssClass="radio-check" runat="server" Text="&nbsp;I will post the check"
                                        onchange="javascript:GetCheckpickUpID(2);" GroupName="PaymentMode" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-md-offset-1">
                            <asp:CheckBox ID="chk" runat="server" Checked="true" />
                            I have read through the website's Privacy agree to make a donation
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12 col-md-offset-1">
                            <asp:LinkButton ID="lbDonate" runat="server" CssClass="btn btn-info btn-lg" Text="Pay Now"
                                OnClick="lbDonate_Click"></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="hfPackageTypeID" runat="server" />
    <asp:HiddenField ID="hfPackageID" runat="server" />
    <asp:HiddenField ID="hfPackageAmount" runat="server" />
    <asp:HiddenField ID="hfDonates" runat="server" />
    <script>
        $(".package").hide();

        function SelectPackage(PackageId) {

            document.getElementById("<%=hfPackageTypeID.ClientID%>").Value = PackageId;

            switch (PackageId) {
                case 1:
                    $(".package").hide();
                    $("#divDigitalPatasala").show();
                    break;
                case 2:
                    $(".package").hide();
                    $("#divClassroom").show();
                    break;
                case 3:
                    $(".package").hide();
                    $("#divSchool").show();
                    break;
                case 4:
                    $(".package").hide();
                    $("#divStudent").show();
                    break;
                case 5:
                    $(".package").hide();
                    $("#divOther").show();
                    break;
            }


        }

        function SelectAmountID(PackageID, PackageAmount) {
            document.getElementById("<%=hfPackageID.ClientID%>").Value = PackageId;
            document.getElementById("<%=hfPackageAmount.ClientID%>").Value = PackageId;

            alert(document.getElementById("<%=hfPackageID.ClientID%>").Value)
            alert(document.getElementById("<%=hfPackageAmount.ClientID%>").Value)

        }
    </script>
    <script type="text/javascript">
        function RadioCheck(rb) {
            var gv = document.getElementById("<%=gvStudents.ClientID%>");
            var rbs = gv.getElementsByTagName("input");

            var row = rb.parentNode.parentNode;
            for (var i = 0; i < rbs.length; i++) {
                if (rbs[i].type == "radio") {
                    if (rbs[i].checked && rbs[i] != rb) {
                        rbs[i].checked = false;
                        break;
                    }
                }
            }
        }  
        
        
          
    </script>
</asp:Content>
