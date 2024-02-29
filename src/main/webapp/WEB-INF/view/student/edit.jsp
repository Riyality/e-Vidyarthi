<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../jsp/modules/header.jsp" />

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false"%>

<!-- Page Wrapper -->
<div class="page-wrapper">
	<div class="content container-fluid">

		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-center">
				<div class="col">
					<h3 class="page-title">Edit Student</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="library.html">Student</a></li>
						<li class="breadcrumb-item active">Edit Student</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-sm-12">

				<div class="card">
					<div class="card-body">
						<form action="updateStudent" method="post">
							<div class="row">
								
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label> Id <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="StudentId"
											value="${param.StudentId }">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label> Name<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="studentName"
											value="${param.StudentName}">

									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Contact Number<span class="login-danger">*</span></label>
										<input type="text" class="form-control" name="ContactNumber"
											value="${param.ContactNumber }">
									</div>
								</div>

								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Email <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="Email"
											value="${param.Email }">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>EnrollmentDate <span class="login-danger">*</span></label>
										<input type="date" class="form-control" name="EnrollmentDate"
											value="${param.EnrollmentDate }">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Address <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="Address"
											value="${param.Address }">
									</div>
								</div>
								
								<%-- <div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Gender <span class="login-danger">*</span></label><br>
										<input type="radio" name="gender" value="${param.male }">
										Male <input type="radio" name="gender"
											value="${param.female }"> Female
											<input type="radio" name="gender" value="${param.other }"> Other
									</div>
								</div> --%>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Date Of Birth <span class="login-danger">*</span></label>
										<input type="date" class="form-control" name="Dob"
											value="${param.Dob }">
									</div>
								</div>
								<h5 class="form-title student-info">
									Education Information <span><a href="javascript:;"><i
											class="feather-more-vertical"></i></a></span>
								</h5>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Highest Qualification <span
											class="login-danger">*</span></label> <input type="text"
											class="form-control" name="highestQualification"
											value="${param.HighestQualification }">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Marks <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="Marks"
											value="${param.Marks }">
									</div>
								</div>


								<div class="col-12">
									<div class="student-submit">
										<button type="submit" class="btn btn-primary">Update</button>
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
<!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->


<include page="../../jsp/modules/footer.jsp"></include>