<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../include.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.alert{
 position: absolute;
    left: 0px;
    top: 0px;
    z-index: 1;
    }
</style>
</head>
<body class="background">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="col-md-12 col-xs-12">
			<div class="x_panel">
				
					<div class="x_title">
						<h2>APPLICANTS DETAIL</h2>
						<c:if test="${not empty msg }">
							<div class="col-md-4 col-sm-4 col-xs-12 pull-right">
						<div class="alert alert-danger"><strong>${msg }</strong></div>
						</div>
						</c:if>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
					<table id="tablee" class="table jambo_table table-striped table-bordered dt-responsive nowrap display dataTable dtr-inline" style="font-size: 95%; width: 100%;">
					<thead>
						<tr>
							<th>Adveretise No</th>
							<th>Name</th>
							<th>Father's Name</th>
							<th>DOB</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>
					</table>
					</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="url" value="${url }">
	<script type="text/javascript">
	$.ajax({
		url : "../admin/applicants"
	}).then(function(data) {
			//datatable		   
			$("#tablee").dataTable({
				paging : false,
				aaData : data.data,
				aoColumns : [ 
					{
						"mData":"advertiseno"
					},
					{
						"mData":"name1"
					},
					{
					"mData" : "father"
				}, 
				{
					"mData":"dob"
				},
				{
					"mData":"status"
				},
				 { "mData": "Action",
                    "orderable": false,
                    "searchable": false,
                    "render": function(data,type,row,meta) { // render event defines the markup of the cell text 
                        var a = '<a href="../nav/applicantdetail/' + row.userid +'"><i class="fa fa-search"></i> Detail</a>'; // row object contains the row data
                        return a;
                    }
                },
				]
			});
	});
	
	</script>
</body>
</html>