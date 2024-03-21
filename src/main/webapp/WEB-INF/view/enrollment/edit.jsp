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
					<h3 class="page-title">Edit Enrollment</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="library.html">Enrollment</a></li>
						<li class="breadcrumb-item active">Edit  Enrollment</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-sm-12">

				<div class="card">
					<div class="card-body">
						<form action="enrollment" method="post">
							<div class="row">
								
								<%-- <div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label> EnrollmentId <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="EnrollmentId"
											value="${param.enrollmentId}">
									</div>
								</div>
								
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>EnrollmentDate <span class="login-danger">*</span></label>
										<input type="date" class="form-control" name="EnrollmentDate"
											value="${param.EnrollmentDate}">
									</div>
					    </div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>StudentId <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="StudentId"
											value="${param.studentId}">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label> courseId <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="courseId"
											value="${param.courseId}">
									</div>
								</div>

							
								

								<div class="col-12">
									<div class="student-submit">
										<button type="submit" class="btn btn-primary">Update</button>
									</div>
								</div>
								 --%>
								 
								 
								 <div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label> EnrollmentId <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="EnrollmentId"
											value="${param.enrollmentId }">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label> EnrollmentDate<span class="login-danger">*</span></label> <input
											type="date" class="form-control" name="EnrollmentDate"
											value="${param.enrollmentDate}">

									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>StudentId<span class="login-danger">*</span></label>
										<input type="text" class="form-control" name="StudentId"
											value="${param.studentId }">
									</div>
								</div>

								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>courseId <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="courseId"
											value="${param.courseId }">
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