

<%@include file="../../jsp/modules/header.jsp"%>
<div class="page-wrapper">
<div class="content container-fluid">

<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">Add Teachers</h3>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="teachers.html">Teachers</a></li>
<li class="breadcrumb-item active">Add Teachers</li>
</ul>
</div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
<div class="card">
<div class="card-body">
<form action="teacher">
<div class="row">
<div class="col-12">
<h5 class="form-title"><span>Basic Details</span></h5>
</div>

<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Teacher Name <span class="login-danger">*</span></label>
<input type="text" class="form-control" name="TeacherName" >
</div>
</div>

<div class="col-12 col-sm-4 local-forms">
<div class="form-group">
<label>Subject <span class="login-danger">*</span></label>
<input class="form-control" type="text" name="Subject" >
</div>
</div>

<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Email ID <span class="login-danger">*</span></label>
<input type="email" class="form-control" name="Email" >
</div>


</div> 

<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Phone_Number <span class="login-danger">*</span></label>
<input type="text" class="form-control" name="Phone_Number" >
</div>
</div>
<div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Address <span class="login-danger">*</span></label>
<input type="text" class="form-control" name="Address">
</div>
</div> 
<div class="col-12 col-sm-4 local-forms">
<div class="form-group">
<label>Degree <span class="login-danger">*</span></label>
<input class="form-control" type="text" name="Degree">
</div>
</div>
 <div class="col-12 col-sm-4">
<div class="form-group local-forms">
<label>Salary <span class="login-danger">*</span></label>
<input class="form-control" type="text" name="Salary">
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
