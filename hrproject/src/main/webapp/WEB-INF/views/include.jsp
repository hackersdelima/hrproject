<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ADBL HR MGMT</title>
<!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/scroller.bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath}/resources/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath}/resources/css/custom.min.css" rel="stylesheet">
    <style>
    	.background{
    	background-color:#F7F7F7;}
    	body{
    	color:black}

textarea:focus, input:focus {
    color: #0206ef;
}
    	.material-switch > input[type="checkbox"] {
    display: none;   
}

.material-switch > label {
    cursor: pointer;
    height: 0px;
    position: relative; 
    width: 40px;  
}

.material-switch > label::before {
    background: rgb(0, 0, 0);
    box-shadow: inset 0px 0px 10px rgba(0, 0, 0, 0.5);
    border-radius: 8px;
    content: '';
    height: 16px;
    margin-top: -8px;
    position:absolute;
    opacity: 0.3;
    transition: all 0.4s ease-in-out;
    width: 40px;
}
.material-switch > label::after {
    background: rgb(255, 255, 255);
    border-radius: 16px;
    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    content: '';
    height: 24px;
    left: -4px;
    margin-top: -8px;
    position: absolute;
    top: -4px;
    transition: all 0.3s ease-in-out;
    width: 24px;
}
.material-switch > input[type="checkbox"]:checked + label::before {
    background: inherit;
    opacity: 0.5;
}
.material-switch > input[type="checkbox"]:checked + label::after {
    background: inherit;
    left: 20px;
}
.panel-heading{
font-weight: bold;}
    </style>
</head>
<body>
 <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
     <!-- Datatables -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.fixedHeader.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.keyTable.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.responsive.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/responsive.bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dataTables.scroller.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vfs_fonts.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/js/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.min.js"></script>
    
    <!-- Form Required Scripts -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/nepaliDatePicker/nepali.datepicker.v2.2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dconverter.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dynamicselect.js"></script>    
</body>
</html>