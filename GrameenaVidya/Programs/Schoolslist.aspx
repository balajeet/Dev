<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Schoolslist.aspx.cs"  Inherits="GVSchools.Programs.Schoolslist"%>

<%--<%@ Register src="../Controls/MultipleCheckbox.ascx" tagname="MultipleCheckbox" tagprefix="uc1" %>--%>

<%--<%@ Register src="../Controls/MultiCheckCombo.ascx" tagname="MultiCheckCombo" tagprefix="uc1" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../CSS/bootstrap.css" rel="stylesheet">
<link href="../CSS/style.css" rel="stylesheet">

<!-- Important Owl stylesheet -->
<link rel="stylesheet" href="../CSS/owl.carousel.css">
<!-- Default Theme -->
<link rel="stylesheet" href="../CSS/owl.theme.css">
<link href="../CSS/font-awesome.min.css" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link href="../CSS/custom.css" rel="stylesheet">
    <script src="../js/bootstrap.js" type="text/javascript"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>

 <style>
 .Pager span
 {
					background:red;
					color:#fff;
					border-radius:5px;
					border:1px solid #ddd;
					line-height:28px;
					margin-right:4px;
					}
					
					.Pager a{
					background:#ddd;
					border-radius:5px;
					border:1px solid #ddd;
					line-height:28px;
					margin-right:4px;
					}
				

</style>
  
  <%-- Bind Districts--%>

  <link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">

<!-- Important Owl stylesheet -->
<link rel="stylesheet" href="../css/owl.carousel.css">
<!-- Default Theme -->
<link rel="stylesheet" href="../css/owl.theme.css">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<link href="../css/custom.css" rel="stylesheet">
    <script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     
 

  <script type = "text/javascript">


      var pageUrl = '<%=ResolveUrl("~/Programs/Schoolslist.aspx")%>'
      function PopulateDistrict() {
          $.ajax({
              type: "POST",
              url: pageUrl + '/PopulateDistricts',
              data: '{StateID: ' + $('#<%=ddlState.ClientID%>').val() + '}',
              contentType: "application/json; charset=utf-8",
              dataType: "json",
              success: OnDistrictsPopulated,
              failure: function (response) {
                  alert(response.d);
              }
          });
      }

      function OnDistrictsPopulated(response) {

          document.getElementById('<%=hdStateName1.ClientID %>').value = $("#ddlState option:selected").text();

          PopulateControl(response.d, $("#<%=ddlDistrict.ClientID %>"));

      }


      $(".Pager .page").live("click", function () {
          GetDataSchools(parseInt($(this).attr('page')));
      });
      function GetDataSchools(pageIndex) {

          //alert($('#<%=ddlDistrict.ClientID%>').val());
          if ($('#<%=ddlDistrict.ClientID%>').val() == "0") {
              document.getElementById('<%= gvSchoolsList.ClientID %>').style.display = 'none';

          }
          else {
              document.getElementById('<%= hdDistrictName.ClientID %>').value = $("#ddlDistrict option:selected").text();
              $.ajax({
                  type: "POST",
                  url: pageUrl + '/GetSchools',
                  data: '{pageIndex: ' + pageIndex + ',StateID: ' + $('#<%=ddlState.ClientID%>').val() + ', DistrictID: ' + $('#<%=ddlDistrict.ClientID%>').val() + ' }',
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",
                  success: OnSuccess,
                  failure: function (response) {
                      alert(response.d);
                  },
                  error: function (response) {
                      alert(response.d);
                  }
              });
          }
      }

      function OnSuccess(response) {

          var xmlDoc = $.parseXML(response.d);
          var xml = $(xmlDoc);
          var customers = xml.find("Customers");

          var row = $("[id*=gvSchoolsList] tr:last-child").clone(true);
          $("[id*=gvSchools] tr").not($("[id*=gvSchools] tr:first-child")).remove();
          $.each(customers, function () {
              var customer = $(this);

              $("td", row).eq(0).html($(this).find("Status").text());
              $("td", row).eq(1).html($(this).find("SchoolName").text());
              $("td", row).eq(2).html($(this).find("Address").text());
              $("td", row).eq(3).html($(this).find("Strength").text());
              $("td", row).eq(4).html($(this).find("Units").text());
              $("td", row).eq(5).html($(this).find("Details").text());

              $("[id*=gvSchoolsList]").append(row);
              row = $("[id*=gvSchoolsList] tr:last-child").clone(true);
          });
          document.getElementById('<%= gvSchoolsList.ClientID %>').style.display = 'block';
          var pager = xml.find("Pager");
          $(".Pager").ASPSnippets_Pager({
              ActiveCssClass: "current",
              PagerCssClass: "pager",
              PageIndex: parseInt(pager.find("PageIndex").text()),
              PageSize: parseInt(pager.find("PageSize").text()),
              RecordCount: parseInt(pager.find("RecordCount").text())
          });



      };    
        

         

 
</script>

<script type = "text/javascript">
    function PopulateControl(list, control) {
        if (list.length > 0) {
            control.removeAttr("disabled");
            control.empty().append('<option selected="selected" value="0">Please select</option>');
            $.each(list, function () {
                control.append($("<option></option>").val(this['Value']).html(this['Text']));
            });
        }
        else {
            control.empty().append('<option selected="selected" value="0">Not available<option>');
        }
    }


    function Call(ID) {

     
        var myPopup = window.open("SchoolsDetails.aspx?ID=" + ID.toString(), "", "directories=no,height=650,width=1250,menubar=no,resizable=no,scrollbars=no,status=no,titlebar=no,top=0,location=no,scrollbars=yes");

        if (!myPopup) {
            myPopup.onload = function () {
                setTimeout(function () {

                    if (myPopup.screenX === 0) {

                    } else {
                        // close the test window if popups are allowed.
                        myPopup.close();
                    }
                }, 0);
            };
        }
    }
</script>

 
</head>
<body>

    <form id="form1" runat="server">
    <asp:ScriptManager ID="script1" runat="server">
    </asp:ScriptManager>
    <div class="main-container">
        <!-- main-container start -->
        <div class="container">
            <!-- container start -->
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="do2nate" style="margin-top: -100px;">
                   <div class="row">
                            <div class="col-md-5 col-sm-6">
                                <div class="form-group">
                                    <label for="name">
                                        Select State:</label>
                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" placeholder="Select State"
                                        AppendDataBoundItems="true" onchange="PopulateDistrict();" DataTextField="StateName"
                                        DataValueField="StateID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-5 col-sm-6">
                                <div class="form-group">
                                    <label for="name">
                                        Select District:</label>
                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" placeholder="Select District"
                                        DataTextField="DistrictName" DataValueField="DistrictID" onchange="GetDataSchools(1);">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 edited-table2">
                                <asp:GridView ID="gvSchoolsList" runat="server"  AutoGenerateColumns="False" Width="100%" BorderWidth="0" CssClass="theader" Style="display: none;">
                                    <Columns>
                                        <asp:BoundField  DataField="Status" HeaderText="Status">
                                            <ItemStyle></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField  DataField="SchoolName" HeaderText="SchoolName">
                                            <ItemStyle ></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField  DataField="Address" HeaderText="Address">
                                            <ItemStyle ></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Strength" HeaderText="Strength">
                                            <ItemStyle></ItemStyle>
                                        </asp:BoundField>
                                         <asp:BoundField  DataField="Units" HeaderText="Units">
                                            <ItemStyle ></ItemStyle>
                                        </asp:BoundField>
                                        
                                             <asp:BoundField  DataField="Details" HeaderText="Details">
                                            <ItemStyle ></ItemStyle>
                                        </asp:BoundField>
                                          
                                    </Columns>
                                </asp:GridView>
                                <br />
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
    <!-- main-container close -->
 
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    

    <script>

        function datatoggle(name) {
            var res = name.split("^");
            document.getElementById('<%= hdschoolname.ClientID %>').value = res[0];
            document.getElementById('<%= hdschoolname.ClientID %>').value = res[1];
            localStorage.setItem("SchoolName", res[0]);
            localStorage.setItem("SchoolID", res[1]);
            localStorage.setItem("Units", res[2]);
            //            alert(document.getElementById('hdStateName1').value);         
            //           localStorage.setItem("StateName",document.getElementById('<%=hdStateName1.ClientID %>').value);
            //            localStorage.setItem("DistrictName", document.getElementById('<%=hdDistrictName.ClientID %>').value);
        }


    </script>

    

    <input type="hidden" id="hdSchoolID" name="hdSchoolID" value="10"/> 
    <asp:HiddenField ID="hfTableRow" runat="server" />
     <asp:HiddenField ID="hdClassName" runat="server" />
     <asp:HiddenField ID="hfClassCount" runat="server" />
       <asp:HiddenField ID="hdYears" runat="server" />
         <asp:HiddenField ID="hdAmount" runat="server" />
         <asp:HiddenField ID="hdschoolname" runat="server" />
         <asp:HiddenField ID="hdDistrictName" runat="server" />
         <asp:HiddenField ID="hdStateName1" runat="server" />
    <script src="../js/jquery-1.9.1.min.js"></script>
    <script src="../js/script.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.js"></script>
    <script src="../js/ASPSnippets_Pager.min.js" type="text/javascript"></script>
    <%--<uc1:MultiCheckCombo ID="MultiCheckCombo1" runat="server" />--%>
    <%--  <uc1:MultipleCheckbox ID="MultipleCheckbox1" runat="server" />--%>
    </form>

 


   
</body>
</html>
