<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentsList.ascx.cs" Inherits="GrameenaVidya.Controls.StudentsList" %>
<style>
 tfoot {
    display: table-header-group;
}
</style>

    <div class="row" style="margin-bottom:100px">
          <div class="col-md-12">
    	<div class="">
			<div class="panel panel-info"  style="min-width:460px">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span>Cart</h5>
							</div>
							
						</div>
					</div>
				</div>
				<div class="panel-body" id="cartbody" style="min-width:100%">
				
				
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right" id="lbltotal">Total <strong>$0.00</strong></h4>
						</div>
						<div class="col-xs-3">
                        
                            <asp:LinkButton ID="lbDonate" runat="server" CssClass="btn btn-success btn-block" 
                                Text="Pay Now" onclick="lbDonate_Click"
                                ></asp:LinkButton>
							
						</div>
					</div>
				</div>
			</div>
		</div>
    
    </div>
    <table>
    <tr>
    <td>
      <div class="col-md-7">
    
     <table name="item" id="item" class="table table-striped table-bordered" width="100%" cellspacing="0">
 <thead><tr><th></th><th>StudentID</th><th>StudentName</th><th>StateName</th><th>DistrictName</th><th>LocationName</th><th></th></tr></thead>
     <tfoot><tr><th></th><th>StudentID</th><th>StudentName</th><th>StateName</th><th>DistrictName</th><th>LocationName</th><th></th></tr></tfoot>
    <tbody id="UserData">
    </tbody>
          
   </table>
    </div>
    </td>
    <td>
   
    </td>
    </tr>
    </table>
  
   
   

    
  </div>
  <asp:HiddenField ID="hfTotalAmount" Value="0" runat="server" />
  <asp:HiddenField ID="hfUserIDFinal" Value="1" runat="server" />
  
    
    <script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
 <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js" type="text/javascript"></script>
 <script src=" https://cdn.datatables.net/fixedcolumns/3.3.2/js/dataTables.fixedColumns.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js " type="text/javascript"></script>

    <script type="text/jscript">


        function GetSelected() {
            var table = $('#item').DataTable();
            debugger;
            var amount = 500;
            var Total = 0;
            var data = table.rows('.selected').data();
            var table = "<table class='table table-bordered table-striped'><thead><tr><th>SNo</th><th>Name</th><th>Amount</th></tr></thead><tbody>";
            $('#selectedforPay').html('');
            for (var i = 0; i < data.length; i++) {
                table = table + "<tr><td>" + (i + 1) + "</td><td>" + data[i].SchoolName + "</td><td>" + amount + "</td><tr>";
                Total = Total + amount;
            }
            table = table + "<tr><td></td><td>Total</td><td>" + Total + "</td></tr>";
            table = table + "</tbody></table>";
         
            $('#selectedforPay').html(table);
        }
        $(document).ready(function () {


            var Type = "Normal";
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "../Donate/Donate.aspx/BindStudents",
                data: '{Type: "' + Type + '"}',
                dataType: "json",
                success: function (Result) {
                    $("#UserData").empty();
                    var tablestring = "";



                    for (var i = 0; i < Result.d.length; i++) {

                        tablestring = tablestring + "<tr id='tr_" + Result.d[i].StudentID + "'><td></td><td>" + Result.d[i].StudentID + "</td><td>" + Result.d[i].StudentName + "</td><td>" + Result.d[i].StateName + "</td><td>" + Result.d[i].DistrictName + "</td><td>" + Result.d[i].LocationName + "</td><td></td></tr>";


                    }


                    $("#UserData").append(tablestring);


                    $('#item tfoot th').each(function () {
                        var title = $(this).text();
                        if (title != "") {
                            $(this).html('<input type="text" placeholder="Search ' + title + '" />');
                        }
                    });

                    // DataTable
                    var otable = $('#item').DataTable({

                        "columns": [
                                             {
                                                 "className": 'details-control',
                                                 "orderable": false,
                                                 "data": null,

                                                 "defaultContent": ''
                                             },

                            { "data": "StudentID" },
                            { "data": "StudentName" },
                                            { "data": "StateName" },
                                              { "data": "DistrictName" },
                                                { "data": "LocationName" },
                                                {
                                                    "orderable": false,
                                                    "className": 'select-checkbox',
                                                    "targets": 5
                                                },
                                        ],
                        "select": {
                            "style": 'multi',
                            "selector": 'td:last-child'
                        },
                        "order": [[1, 'asc']]
                    });

                    // Apply the search
                    otable.columns().every(function () {

                        var that = this;
                        $('input', this.footer()).on('keyup change', function () {
                            if (that.search() !== this.value) {
                                that
                 .search(this.value)
                 .draw();
                            }
                        });
                    });
                    // DataTable

                    // Add event listener for opening and closing details


                },
                error: function (result) {
                    alert("Error");
                }

            });

            //                    table.columns().every(function () {
            //                        var that = this;

            //                        $('input', this.footer()).on('keyup change', function () {
            //                            if (that.search() !== this.value) {
            //                                that
            //                    .search(this.value)
            //                    .draw();
            //                            }
            //                        });
            //                    });




        });
        $("#item").on("click", ".select-checkbox", function () {
            debugger;
            var tr = $(this).closest("tr");
            var currentRow = $("#item").DataTable().rows(tr);
           
            var html = "";
            html = html + "<div class='row' id='row_" + tr.find('td:eq(1)').text() + "'><div class='col-xs-2'><img class='img-responsive' src='http://placehold.it/100x70'></div>";
            html = html + "<div class='col-xs-4'><h4 class='product-name'><strong>" + tr.find('td:eq(2)').text() + "</strong></h4><h4><small> description</small></h4></div>";
            html = html + "<div class='col-xs-6'><div class='col-xs-6 text-right'><h6 class='amount'><strong>500.00 <span class='text-muted'>x</span></strong></h6></div>";
            html = html + "<div class='col-xs-4'><input type='text' class='form-control input-sm' readonly value='1'></div>";
            html = html + "<div class='col-xs-2'><button type='button' class='btn btn-link btn-xs' id='del_" + tr.find('td:eq(1)').text() + "'><span class='glyphicon glyphicon-trash'> </span></button>";
            html = html + "</div></div></div><hr>";
            $("#cartbody").append(html);
            var count = $('#cartbody div.row').length;
            $("#lbltotal").html("Total <strong>$" + (count * 500) + "</strong>");
            $("#<%=hfTotalAmount.ClientID%>").val(count * 500);

        });
        $("#cartbody").on("click", ".btn-link", function () {

           
            var id = this.id;
            var s = id.split("_");
            var deletetr = "row_" + s[1];
            $("#" + deletetr).remove();
            var count = $('#cartbody div.row').length;
            $("#lbltotal").html("Total <strong>$" + (count * 500) + "</strong>");
            $("#<%=hfTotalAmount.ClientID%>").val(count * 500);
        });

    </script>
