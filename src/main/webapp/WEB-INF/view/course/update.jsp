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
					<h3 class="page-title">Edit Course</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="library.html">Course</a></li>
						<li class="breadcrumb-item active">Edit Course</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-sm-12">

				<div class="card">
					<div class="card-body">
						<form action="updateCourse" method="post">
							<div class="row">
								<div class="col-12">
									<!-- 	<h5 class="form-title"><span>Course Information</span></h5> -->
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Id<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="CourseId"
											value="${param.courseId}">

									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Name<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="CourseName"
											value="${param.CourseName}">

									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Instructor<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="Instructor"
											value="${param.Instructor }">
									</div>
								</div>

								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Schedule <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="CSchedule"
											value="${param.CSchedule }">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Capacity <span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="Capacity"
											value="${param.Capacity}">
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