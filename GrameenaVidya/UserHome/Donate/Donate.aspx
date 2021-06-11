<%@ Page Title="" Language="C#" MasterPageFile="~/Master/InsideMaster.master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="GrameenaVidya.UserHome.Donate.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
 
    <link href="../../CSS/donate.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="main-container campaign">
        <!-- main-container start -->
        <div class="container">
         <div class="container dontate-form">
    <div class="row">
       
            <div class="form-group">
                <h4>Select Citizenship</h4>
                <div>
                    <label class="radio-inline">
                        <input type="radio" name="radio" value="India"> India </label>
                    <label class="radio-inline">
                        <input type="radio" name="radio" value="usa"> USA </label>
                </div>
            </div>
            
            <hr>
            
            <div class="select-program">
            <div class="form-group">
                <h4>Select Program</h4>
                <div>
                    <label class="radio-inline">
                        <input type="radio" name="radio1" value="school" id="adopt-school-radio"> Adopt a school </label>
                    <label class="radio-inline">
                        <input type="radio" name="radio1" value="student" id="adopt-student-radio"> Adopt a Student </label>
                </div>
            </div>
            <div class="form-group existing-form">
                <label for="radio2" class="control-label"></label>
                <div>
                    <label class="radio-inline">
                        <input type="radio" name="radio2" value="a" id="school-existing"> Existing List </label>
                    <label class="radio-inline">
                        <input type="radio" name="radio2" value="b" id="school-select-own"> Select your own school </label>
                    <div class="container existing-table-data">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>S.No</th>
                                    <th>School</th>
                                    <th>Unit</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="container select-own-school mtb-20">
                        <form>
                           <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea" class="control-label">Name of the School</label>
                                <textarea id="textarea" name="textarea" cols="40" rows="5" class="form-control"></textarea>
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="textarea1" class="control-label">Address & Contact Info</label>
                                <textarea id="textarea1" name="textarea1" cols="40" rows="5" class="form-control"></textarea>
                            </div></div>
                           </div>
                            
                            
                            
                            <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea2" class="control-label">Name of the Decision maker</label>
                                <input id="text" name="text" type="text" class="form-control">
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text" class="control-label">Contact Info of Decision Maker</label>
                                <input id="text" name="text" type="text" class="form-control"> </div></div>
                           </div>
                           
                           
                            
                          
                             
                               
                              <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="text1" class="control-label">Email ID</label>
                                <input id="text1" name="text1" type="text" class="form-control"> </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text2" class="control-label">Curriculum</label>
                                <input id="text2" name="text2" type="text" class="form-control"> </div></div>
                           </div>  
                                 
                            
                                
                                
                                
                                
                                
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text3" class="control-label">Student Strength</label>
                                <input id="text3" name="text3" type="text" class="form-control"> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text4" class="control-label">No.Of Girl Students</label>
                                <input id="text4" name="text4" type="text" class="form-control"> </div></div>
                           </div>
                           
                           
                                
                                
                                
                                
                                 <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text5" class="control-label">No.Of Teachers</label>
                                <input id="text5" name="text5" type="text" class="form-control"> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="text6" class="control-label">Private / Government School</label>
                                <input id="text6" name="text6" type="text" class="form-control"> </div></div>
                           </div>
                           
                           
                                
                                
                                
                                
                                 <div class="row">
                               <div class="col-md-6">  <div class="form-group">
                                <label for="text7" class="control-label">Average School Fee</label>
                                <input id="text7" name="text7" type="text" class="form-control"> </div></div>
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea3" class="control-label">Geographical Information</label>
                               <input id="text" name="text" type="text" class="form-control">
                            </div></div>
                           </div>
                          
                           
                            
                            
                            
                            
                             <div class="row">
                               <div class="col-md-6"> <div class="form-group">
                                <label for="textarea4" class="control-label">Socio Economic Background</label>
                                <input id="text" name="text" type="text" class="form-control">
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="text8" class="control-label">Student's Family Income Survey</label>
                                <input id="text8" name="text8" type="text" class="form-control"> </div></div>
                           </div>
                           
                            
                                
                                
                                
                                
                                
                                 <div class="row">
                               <div class="col-md-6"><div class="form-group">
                                <label for="text9" class="control-label">How many Computers in the school for student use?</label>
                                <input id="text9" name="text9" type="text" class="form-control"> </div></div>
                               <div class="col-md-6">  </div>
                           </div>
                            
                          
                            
                             <div class="row">
                              <div class="col-md-6"><div class="form-group">
                                <label for="checkbox" class="control-label">Do you have any On-line Classes?</label>
                                <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox" value="yes"> Yes </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox" value="no"> No </label>
                                </div>
                            </div></div>
                               <div class="col-md-6"><div class="form-group">
                                <label for="checkbox1" class="control-label">Do you already have a smart classroom?</label>
                                <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="yes"> Yes </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="checkbox1" value="no"> No </label>
                                </div>
                            </div></div>
                               
                           </div>
                            
                            
                            <div class="form-group">
                                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            
            
            <hr>
            
            <div class="form-group select-school-form">
                <label for="radio2" class="control-label"></label>
                <div>
                    <label class="radio-inline">
                        <input type="radio" name="radio2" value="a" id="student-existing"> Existing List </label>
                    <label class="radio-inline">
                        <input type="radio" name="radio2" value="b" id="student-select-own"> Upload Form </label>
                    <div class="container student-table-data">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>S.No</th>
                                    <th>School</th>
                                    <th>Unit</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>ABC School</td>
                                    <td>
                                        <div class="form-group">
                                            <select id="select" name="select" class="select form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>$547</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="container select-own-student">
                        <form>
                            <div class="form-group">
                                <label for="text" class="control-label">Please select file</label>
                                <input id="text" name="text" type="file" class="form-control"> </div>
                        </form>
                    </div>
                </div>
            </div>
            
              <hr>
              
            <div class="form-group">
                <label for="radio2" class="control-label"></label>
                <div>
                    <h4>Donor Details</h4>
                    <label class="radio-inline">
                        <input type="radio" name="radio2" value="a" id="existing-donor"> Existing List </label>
                    <label class="radio-inline">
                        <input type="radio" name="radio2" value="b" id="new-donor"> Upload Form </label>
                    <div class="container existing-donor-details mtb-20">
                        <form>
                            <div class="form-group">
                                <label for="text1">Username</label>
                                <input id="text1" name="text1" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <label for="text2">Password</label>
                                <input id="text2" name="text2" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                    <div class="container new-donor-details mtb-20">
                        <form>
                            <div class="form-group">
                                <label for="text1">First Name</label>
                                <input id="text1" name="text1" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <label for="text2">Your Email</label>
                                <input id="text2" name="text2" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <label for="text">Address 1</label>
                                <input id="text" name="text" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <label for="text3">Address 2</label>
                                <input id="text3" name="text3" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <label for="select">Select Country</label>
                                <div>
                                    <select id="select" name="select" class="custom-select">
                                        <option value="india">India</option>
                                        <option value="usa">USA</option>
                                        <option value="uk">UK</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select1">State</label>
                                <div>
                                    <select id="select1" name="select1" class="custom-select">
                                        <option value="state1">State1</option>
                                        <option value="state2">State2</option>
                                        <option value="state3">State3</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text4">Pin Code No</label>
                                <input id="text4" name="text4" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <label for="text5">Mobile No</label>
                                <input id="text5" name="text5" type="text" class="form-control"> </div>
                            <div class="form-group">
                                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
            </div>
       
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" type="text/javascript"></script>

            </div>
            <!-- container start -->
          
        </div>
  </asp:Content>
   
