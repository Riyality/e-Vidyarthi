<%@include file="../../jsp/modules/header.jsp"%>

<link rel="shortcut icon" href="resources/assets/img/favicon.png">

<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0300;0,400;0,600;0,800;1,400;1,500;1,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="resources/assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/assets/plugins/feather/feather.css">

<link rel="stylesheet" href="resources/assets/plugins/icons/flags/flags.css">

<link rel="stylesheet" href="resources/assets/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="resources/assets/css/style.css">
</head>
<body>



<div class="page-wrapper">
<div class="content container-fluid">

<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">Course</h3>

</div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
<div class="card">
<div class="card-body">
<form action="add">
<div class="row">
<div class="col-12">

</div>

<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label> Name <span class="login-danger">*</span></label>
<input type="text" class="form-control" name="CourseName" >
</div>
</div>


<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Instructor <span class="login-danger">*</span></label>
<input type="text" class="form-control" name="Instructor" >
</div>
</div>

<div class="col-12 col-sm-4 local-forms">
<div class="form-group">
<label>Schedule <span class="login-danger">*</span></label>
<input class="form-control" type="text" name="CSchedule" >
</div>
</div>
 <div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Capacity <span class="login-danger">*</span></label>
<input class="form-control" type="text"  name="Capacity" >
</div>
</div>

<div class="col-12">
<div class="student-submit">
<button type="submit" class="btn btn-primary">Submit</button>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>

</div>


<script src="resources/assets/js/jquery-3.6.0.min.js"></script>

<script src="resources/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="resources/assets/js/feather.min.js"></script>

<script src="resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="resources/assets/plugins/select2/js/select2.min.js"></script>

<script src="resources/assets/plugins/moment/moment.min.js"></script>
<script src="resources/assets/js/bootstrap-datetimepicker.min.js"></script>

<script src="resources/assets/js/script.js"></script>
</body>
<%@include file="../../jsp/modules/footer.jsp"%>