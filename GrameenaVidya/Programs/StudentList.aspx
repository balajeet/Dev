<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="GrameenaVidya.Programs.StudentList" %>
<%@ Register src="~/Controls/StudentsList.ascx" tagname="StudentsList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
.frb-group {
	margin: 15px 0;
}

.frb ~ .frb {
	margin-top: 15px;
}

.frb input[type="radio"]:empty,
.frb input[type="checkbox"]:empty {
	display: none;
}

.frb input[type="radio"] ~ label:before,
.frb input[type="checkbox"] ~ label:before {
	font-family: FontAwesome;
	content: '\f096';
	position: absolute;
	top: 50%;
	margin-top: -11px;
	left: 15px;
	font-size: 22px;
}

.frb input[type="radio"]:checked ~ label:before,
.frb input[type="checkbox"]:checked ~ label:before {
	content: '\f046';
}

.frb input[type="radio"] ~ label,
.frb input[type="checkbox"] ~ label {
	position: relative;
	cursor: pointer;
	width: 100%;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f2f2f2;
}

.frb input[type="radio"] ~ label:focus,
.frb input[type="radio"] ~ label:hover,
.frb input[type="checkbox"] ~ label:focus,
.frb input[type="checkbox"] ~ label:hover {
	box-shadow: 0px 0px 3px #333;
}

.frb input[type="radio"]:checked ~ label,
.frb input[type="checkbox"]:checked ~ label {
	color: #fafafa;
}

.frb input[type="radio"]:checked ~ label,
.frb input[type="checkbox"]:checked ~ label {
	background-color: #f2f2f2;
}

.frb.frb-default input[type="radio"]:checked ~ label,
.frb.frb-default input[type="checkbox"]:checked ~ label {
	color: #333;
}

.frb.frb-primary input[type="radio"]:checked ~ label,
.frb.frb-primary input[type="checkbox"]:checked ~ label {
	background-color: #337ab7;
}

.frb.frb-success input[type="radio"]:checked ~ label,
.frb.frb-success input[type="checkbox"]:checked ~ label {
	background-color: #5cb85c;
}

.frb.frb-info input[type="radio"]:checked ~ label,
.frb.frb-info input[type="checkbox"]:checked ~ label {
	background-color: #5bc0de;
}

.frb.frb-warning input[type="radio"]:checked ~ label,
.frb.frb-warning input[type="checkbox"]:checked ~ label {
	background-color: #f0ad4e;
}

.frb.frb-danger input[type="radio"]:checked ~ label,
.frb.frb-danger input[type="checkbox"]:checked ~ label {
	background-color: #d9534f;
}

.frb input[type="radio"]:empty ~ label span,
.frb input[type="checkbox"]:empty ~ label span {
	display: inline-block;
}

.frb input[type="radio"]:empty ~ label span.frb-title,
.frb input[type="checkbox"]:empty ~ label span.frb-title {
	font-size: 16px;
	font-weight: 700;
	margin: 5px 5px 5px 50px;
}

.frb input[type="radio"]:empty ~ label span.frb-description,
.frb input[type="checkbox"]:empty ~ label span.frb-description {
	font-weight: normal;
	font-style: italic;
	color: #999;
	margin: 5px 5px 5px 50px;
}

.frb input[type="radio"]:empty:checked ~ label span.frb-description,
.frb input[type="checkbox"]:empty:checked ~ label span.frb-description {
	color: #fafafa;
}

.frb.frb-default input[type="radio"]:empty:checked ~ label span.frb-description,
.frb.frb-default input[type="checkbox"]:empty:checked ~ label span.frb-description {
	color: #999;
}
</style>

<style>
    .checkbox {
  padding-left: 20px; }
  .checkbox label {
    display: inline-block;
    position: relative;
    padding-left: 5px; }
    .checkbox label::before {
      content: "";
      display: inline-block;
      position: absolute;
      width: 17px;
      height: 17px;
      left: 0;
      margin-left: -20px;
      border: 1px solid #cccccc;
      border-radius: 3px;
      background-color: #fff;
      -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
      -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
      transition: border 0.15s ease-in-out, color 0.15s ease-in-out; }
    .checkbox label::after {
      display: inline-block;
      position: absolute;
      width: 16px;
      height: 16px;
      left: 0;
      top: 0;
      margin-left: -20px;
      padding-left: 3px;
      padding-top: 1px;
      font-size: 11px;
      color: #555555; }
  .checkbox input[type="checkbox"] {
    opacity: 0; }
    .checkbox input[type="checkbox"]:focus + label::before {
      outline: thin dotted;
      outline: 5px auto -webkit-focus-ring-color;
      outline-offset: -2px; }
    .checkbox input[type="checkbox"]:checked + label::after {
      font-family: 'FontAwesome';
      content: "\f00c"; }
    .checkbox input[type="checkbox"]:disabled + label {
      opacity: 0.65; }
      .checkbox input[type="checkbox"]:disabled + label::before {
        background-color: #eeeeee;
        cursor: not-allowed; }
  .checkbox.checkbox-circle label::before {
    border-radius: 50%; }
  .checkbox.checkbox-inline {
    margin-top: 0; }

.checkbox-primary input[type="checkbox"]:checked + label::before {
  background-color: #428bca;
  border-color: #428bca; }
.checkbox-primary input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-danger input[type="checkbox"]:checked + label::before {
  background-color: #d9534f;
  border-color: #d9534f; }
.checkbox-danger input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-info input[type="checkbox"]:checked + label::before {
  background-color: #5bc0de;
  border-color: #5bc0de; }
.checkbox-info input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-warning input[type="checkbox"]:checked + label::before {
  background-color: #f0ad4e;
  border-color: #f0ad4e; }
.checkbox-warning input[type="checkbox"]:checked + label::after {
  color: #fff; }

.checkbox-success input[type="checkbox"]:checked + label::before {
  background-color: #5cb85c;
  border-color: #5cb85c; }
.checkbox-success input[type="checkbox"]:checked + label::after {
  color: #fff; }
</style>
    <style>
        td.details-control {
    background: url('../images/details_open.png') no-repeat center center;
    cursor: pointer;
}
tr.shown td.details-control {
    background: url('../images/details_close.png') no-repeat center center;
}
        body p {
    text-align: center;
}
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
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="Stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" />
<link rel="Stylesheet" href=" https://cdn.datatables.net/fixedcolumns/3.3.2/css/fixedColumns.dataTables.min.css" />
<link rel="Stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
    <link href="../../CSS/donate.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <uc1:StudentsList ID="StudentsList1" runat="server" />
    </div>
</asp:Content>
