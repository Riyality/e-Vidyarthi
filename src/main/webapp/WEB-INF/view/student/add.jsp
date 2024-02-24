<%@include file="../../jsp/modules/header.jsp"%>
<link rel="shortcut icon" href="assets/img/favicon.png">

<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&display=swap" rel="stylesheet">

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



<div class="row">
<div class="col-sm-12">
<div class="card comman-shadow">
<div class="card-body">

<form action="student" method="post">
<div class="row">
<div class="col-12">
<h5 class="form-title student-info">Student Information <span><a href="javascript:;"><i class="feather-more-vertical"></i></a></span></h5>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Student Id <span class="login-danger"></span></label>
<input class="form-control" type="text" placeholder="Enter your Id"  name="StudentId">
</div>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Student Name <span class="login-danger">*</span></label>
<input class="form-control" type="text" placeholder="Enter your Name"  name="StudentName">
</div>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Contact Number <span class="login-danger">*</span></label>
<input class="form-control" type="text" placeholder="Enter your Contact Number"  name="ContactNumber">
</div>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Email <span class="login-danger">*</span></label>
<input class="form-control" type="text" placeholder="Enter your Email"  name="Email">
</div>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Enrollment Date <span class="login-danger">*</span></label>
<input class="form-control" type="text" placeholder="Enter your Enrollment Date"  name="EnrollmentDate">
</div>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Status <span class="login-danger">*</span></label>
<input class="form-control" type="text" placeholder="Enter your Status"  name="StudentStatus">
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