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
					<h3 class="page-title">Edit Department</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="library.html">Department</a></li>
						<li class="breadcrumb-item active">Edit Department</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-sm-12">

				<div class="card">
					<div class="card-body">
						<form action="updatedepartment" method="post">
							<div class="row">
								
								
									
										<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Department Id<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="departmentID"
											value="${param.departmentID}">

									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Department Name<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="departmentName"
											value="${param.departmentName}">

									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Head of department<span class="login-danger">*</span></label>
										<input type="text" class="form-control" name="head_of_Department"
											value="${param.head_of_Department}">
									</div>
								</div>
								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>Department start<span class="login-danger">*</span></label>
										<input type="date" class="form-control" name="department_Start"
											value="${param.department_Start}">
									</div>
								</div>

								<div class="col-12 col-sm-4">
									<div class="form-group local-forms">
										<label>students<span class="login-danger">*</span></label> <input
											type="text" class="form-control" name="students"
											value="${param.students}">
									</div>
								</div>
								
								
							<div class="col-12">
									<div class="Department-submit">
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