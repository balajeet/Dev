<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MediaControl.ascx.cs" Inherits="GrameenaVidya.Controls.MediaControl" %>
<style>
    .media
    {
      
        
        list-style-type: none;
        padding: 0;
        margin: 0;

        
    }
    .media li
    {
    	
        list-style-image: url('../images/list.png');
        padding:5px;
        
        background-image: url('../images/list.png');
        background-repeat: no-repeat;
        background-position: 0 .4em;
               
        margin-left: 8px;
        padding: 3px 5px 5px 1.6em;
        padding-left: 1.6em;
    }
</style>


<script>
    function GetMediaPages(mediaQ, mediaurl) {
        localStorage.setItem("MediaQ", mediaQ);
        localStorage.setItem("MediaUrl", mediaurl);
     }   
</script>
<script>
    function GetMediaPages(typeID, monthName) {
        var iFrameID = document.getElementById('idIframe');
        if (typeID == 1) {
            if (monthName == 'apr2015') {
                iFrameID.src = "media1/events/eventApr2015.aspx";
            } else if (monthName == 'june2015') {
                iFrameID.src = "media1/events/eventJun2015.aspx";
            }
            else if (monthName == 'aug2015') {
                iFrameID.src = "media1/events/eventAug2015.aspx";
            }
            else if (monthName == 'july2015') {
                iFrameID.src = "media1/events/eventJuly2015.aspx";
            }
           
            else if (monthName == 'oct2015') {
                iFrameID.src = "media1/events/eventOct2015.aspx";
            }
            else if (monthName == 'dec2015') {
                iFrameID.src = "media1/events/eventDec2015.aspx";
            }
            else if (monthName == 'jan2016') {
                iFrameID.src = "media1/events/eventJan2016.aspx";
            }
            else if (monthName == 'feb2016') {
                iFrameID.src = "media1/events/eventFeb2016.aspx";
            }
            else if (monthName == 'mar2016') {
                iFrameID.src = "media1/events/eventMar2016.aspx";
            }
            else if (monthName == 'may2016') {
                iFrameID.src = "media1/events/eventMay2016.aspx";
            }
            
        } else if (typeID == 2) {
            if (monthName == 'apr2015') {
                iFrameID.src = "media1/press%20clips/pressclipsApr2015.aspx";
            } else if (monthName == 'aug2015') {
                iFrameID.src = "media1/press%20clips/pressclipsAug2015.aspx";
            }
        } else if (typeID == 3) {
            //alert(monthName);
            if (monthName == 'apr2015') {
                alert("hi");
                iFrameID.src = "media1/galary/apr2015.aspx";
            } else if (monthName == 'aug2015') {
                iFrameID.src = "media1/galary/aug2015.aspx";
            }
        }
    }
    </script>




<%--<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Events
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
     
           <div class="panel-heading" role="tab" id="divApr">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
          Apr
        </a>
      </h4>
    </div>
     <div class="panel-heading" role="tab" id="divAug">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
          Aug
        </a>
      </h4>
    </div>
     <div class="panel-heading" role="tab" id="div1">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
          Aug
        </a>
      </h4>
    </div>
     <div class="panel-heading" role="tab" id="div2">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
          Aug
        </a>
      </h4>
    </div>
     <div class="panel-heading" role="tab" id="div3">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
          Aug
        </a>
      </h4>
    </div>
          
          
          
      </div>
    </div>
  </div>
   <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseOne1">
      <div class="panel-body">
     
            <ul class="media">
           <li ><a onclick="javascript:GetMediaPages(2,'apr2015');" style=" cursor:pointer;"> Apr </a></li>
          <li ><a href="#"> May </a></li>
           <li ><a href="#"> Jun </a></li>
          <li ><a href="#"> Jul </a></li>
          <li ><a onclick="javascript:GetMediaPages(2,'aug2015');" style=" cursor:pointer;"> Aug </a></li>
        </ul>
    </div>
          
          
          
      </div>
    </div>--%>

    
   
  <%-- <div class="container">
<div id="mainmenu" class="row">
          <div class="list-group panel visible-md visible-lg">
              <a href="#" class="list-group-item"><i class="glyphicon glyphicon-home"></i></a>
          </div>
          <div class="list-group panel">
            <a href="#menupos1" class="list-group-item" data-toggle="collapse" data-parent="#mainmenu">Pos1 <span class="menu-ico-collapse"><i class="glyphicon glyphicon-chevron-down"></i></span></a>
            <div class="collapse pos-absolute" id="menupos1">
              <a href="#submenu1" class="list-group-item sub-item" data-toggle="collapse" data-parent="#submenu1">SubPos1 <span class=" menu-ico-collapse"><i class="glyphicon glyphicon-chevron-down"></i></span></a>
                  <div class="collapse list-group-submenu" id="submenu1">
                    <a href="#" class="list-group-item sub-sub-item" data-parent="#submenu1">SubSubPos1</a>
                    <a href="#" class="list-group-item sub-sub-item" data-parent="#submenu1">SubSubPos2</a>
                    <a href="#" class="list-group-item sub-sub-item" data-parent="#submenu1">SubSubPos3</a>
                    <a href="#" class="list-group-item sub-sub-item" data-parent="#submenu1">SubSubPos4</a>
                  </div>
             <a href="#" data-toggle="collapse" data-target="#menupos1" class="list-group-item sub-item">SubPos2</a>
             <a href="#" data-toggle="collapse" data-target="#menupos1" class="list-group-item sub-item">SubPos3</a>
             <a href="#" data-toggle="collapse" data-target="#menupos1" class="list-group-item sub-item">SubPos4</a>
             <a href="#" data-toggle="collapse" data-target="#menupos1" class="list-group-item sub-item">SubPos5</a>                                                                    
              </div>
            </div>

</div>
</div>--%>





<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<div class="panel panel-default">


    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-target="#collapseOne">
          Events
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">

      <div class="panel-group" id="accordion10" role="tablist" aria-multiselectable="true">
        <div class="panel-heading" role="tab" id="d2016">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2016" aria-expanded="false" aria-controls="div2016">
          2016
        </a>
      </h4>
    </div>
     <div id="div2016" class="panel-collapse collapse"  role="tabpanel" aria-labelledby="d2016">
      <div class="panel-body">
     <%-- Comments    Jan Panel--%>

              <div class="panel-heading" role="tab" id="headingdiv2016">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2016jan" aria-expanded="false" aria-controls="div2016jan">
                         <a onclick="javascript:GetMediaPages(1,'jan2016');" style=" cursor:pointer;">Jan</a>
                       </a>
                  </h4>
           </div>
                
            <%-- Comments    feb Panel--%>

              <div class="panel-heading" role="tab" id="headingfeb16">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2016Feb" aria-expanded="false" aria-controls="div2016Feb">
                         <a onclick="javascript:GetMediaPages(1,'feb2016');" style=" cursor:pointer;">Feb</a>
                       </a>
                  </h4>
           </div>
                
            <%-- Comments    March Panel--%>

              <div class="panel-heading" role="tab" id="Div11">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2016Mar" aria-expanded="false" aria-controls="div2016Mar">
                         <a onclick="javascript:GetMediaPages(1,'Mar2016');" style=" cursor:pointer;">March</a>
                       </a>
                  </h4>
           </div>
              
          
            <%-- Comments    May Panel--%>

              <div class="panel-heading" role="tab" id="Div3">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2016May" aria-expanded="false" aria-controls="div2016May">
                        <a onclick="javascript:GetMediaPages(1,'may2016');" style=" cursor:pointer;">May</a>
                       </a>
                  </h4>
           </div>
                


   


      </div>
    </div>

           <div class="panel-heading" role="tab" id="heading2015">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015" aria-expanded="false" aria-controls="div2015">
          2015
        </a>
      </h4>
    </div>
         <div id="div2015" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading2015">
      <div class="panel-body">
      <%-- Comments    April Panel--%>

       <div class="panel-heading" role="tab" id="headingApril">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015Apr" aria-expanded="false" aria-controls="div2015Apr">
                      <a onclick="javascript:GetMediaPages(1,'apr2015');" style=" cursor:pointer;">April</a>
                       </a>
                  </h4>
           </div>
          
           
    
       <%-- Comments    June Panel--%>
        <div class="panel-heading" role="tab" id="headingJune">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015jun" aria-expanded="false" aria-controls="div2015jun">
                        <a onclick="javascript:GetMediaPages(1,'june2015');" style=" cursor:pointer;">June</a>
                       </a>
                  </h4>
           </div>
              
     

        <%-- Comments    July Panel--%>
         <div class="panel-heading" role="tab" id="headingJuly">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015July" aria-expanded="false" aria-controls="div2015July">
                         <a onclick="javascript:GetMediaPages(1,'july2015');" style=" cursor:pointer;">July</a>
                       </a>
                  </h4>
           </div>
                 
     
      <%-- Comments    August Panel--%>

              <div class="panel-heading" role="tab" id="Div1">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015Aug" aria-expanded="false" aria-controls="div2015Aug">
                         <a onclick="javascript:GetMediaPages(1,'aug2015');" style=" cursor:pointer;">August</a>
                       </a>
                  </h4>
           </div>
                
     
        <%-- Comments    October Panel--%>

              <div class="panel-heading" role="tab" id="Div2">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015Oct" aria-expanded="false" aria-controls="div2015Oct">
                        <a onclick="javascript:GetMediaPages(1,'oct2015');" style=" cursor:pointer;">October</a> 
                       </a>
                  </h4>
           </div>
                 


       <%-- Comments    December Panel--%>

              <div class="panel-heading" role="tab" id="heading2015dec">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#div2015Dec" aria-expanded="false" aria-controls="div2015Dec">
                       <a onclick="javascript:GetMediaPages(1,'dec2015');" style=" cursor:pointer;">December</a>
                       </a>
                  </h4>
           </div>
               


      </div>
      </div>

       </div>

      </div>
      </div>



    
  </div>

  
  




 <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Media
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
       <div class="panel-heading" role="tab" id="Div4">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divP2015" aria-expanded="false" aria-controls="divP2015">
          2015
        </a>
      </h4>
    </div>
         <div id="divP2015" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="divP2015">
      <div class="panel-body">
      <%-- Comments    April Panel--%>

       <div class="panel-heading" role="tab" id="Div6">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divP2015Apr" aria-expanded="false" aria-controls="divP2015Apr">
                      <a onclick="javascript:GetMediaPages(2,'apr2015');" style=" cursor:pointer;">April</a>
                       </a>
                  </h4>
           </div>
          
           
    
       <%-- Comments    July Panel--%>
        <div class="panel-heading" role="tab" id="Div7">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divP2015jul" aria-expanded="false" aria-controls="divP2015jul">
                        <a onclick="javascript:GetMediaPages(2,'july2015');" style=" cursor:pointer;">July</a>
                       </a>
                  </h4>
           </div>
      </div>
      </div>

       <div class="panel-heading" role="tab" id="Div5">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divP2016" aria-expanded="false" aria-controls="divP2016">
          2016
        </a>
      </h4>
    </div>
         <div id="divP2016" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="divP2016">
      <div class="panel-body">
      <%-- Comments    April Panel--%>

       <div class="panel-heading" role="tab" id="Div9">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divP2016Jan" aria-expanded="false" aria-controls="divP2015Apr">
                      <a onclick="javascript:GetMediaPages(2,'apr2015');" style=" cursor:pointer;">Jan</a>
                       </a>
                  </h4>
           </div>
          
           
    
       <%-- Comments    July Panel--%>
        <div class="panel-heading" role="tab" id="Div10">
                 <h4 class="panel-title">
                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#divP2016May" aria-expanded="false" aria-controls="divP2015jul">
                        <a onclick="javascript:GetMediaPages(2,'july2015');" style=" cursor:pointer;">May</a>
                       </a>
                  </h4>
           </div>
      </div>
      </div>
    </div>
    </div>
  
  </div>
  </div>

 <%--  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Photo Gallery
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <ul class="media">
          <li ><a  href="" onclick="javascript:GetMediaPages(3,'apr2015');" style=" cursor:pointer;"> Apr </a></li>
          <li ><a href="#"> May </a></li>
           <li ><a href="#"> Jun </a></li>
          <li ><a href="#"> Jul </a></li>
          <li ><a onclick="javascript:GetMediaPages(3,'aug2015');" style=" cursor:pointer;"> Aug </a></li>
        </ul>
      </div>
    </div>
  </div>



   <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          Video Testimonials
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
        <ul class="media">
           <li ><a href="#"> Apr </a></li>
          <li ><a href="#"> May </a></li>
           <li ><a href="#"> Jun </a></li>
          <li ><a href="#"> Jul </a></li>
          <li ><a href="#"> Aug </a></li>
        </ul>
      </div>
    </div>
  </div>
    --%>

    



