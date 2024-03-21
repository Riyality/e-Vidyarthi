<%@include file="../../jsp/modules/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<link rel="shortcut icon" href="assets/img/favicon.png">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="resources/assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/feather/feather.css">

<link rel="stylesheet"
	href="resources/assets/plugins/icons/flags/flags.css">

<link rel="stylesheet"
	href="resources/assets/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="resources/assets/css/style.css">
<
<style>
.box {
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="page-wrapper">
		<div class="content container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="card comman-shadow">
						<div class="card-body">

							<form action="enrollment-add" method="post">
								<div class="row">
									<div class="col-12">
										<h5 class="form-title student-info">
											Enrollment Information <span><a href="javascript:;"><i
													class="feather-more-vertical"></i></a></span>
										</h5>
									</div>

									<label for="studentId">Student ID:</label> <select
										name="studentId" class="box">
										<c:forEach items="${studentList}" var="student">
											<option value="${student.studentId}"
												data-student-name="${student.studentName}"
												data-contact-number="${student.contactNumber}"
												>
												 ${student.studentId}
											</option>
										</c:forEach>
									</select>


									<div class="col-12 col-sm-4">

										<div class="form-group local-forms">
											<label> Name <span class="login-danger">*</span></label> <input
												class="form-control" type="text" name="StudentName"
												value="${student.studentName }">
										</div>
									</div>
									<div class="col-12 col-sm-4">
										<div class="form-group local-forms">
											<label>Contact Number <span class="login-danger">*</span></label>
											<input class="form-control" type="text" name="ContactNumber"
												value="${student.contactNumber }">
										</div>
									</div>
									<div class="col-12 col-sm-4">
										<div class="form-group local-forms">
											<label>Enrollment Date <span class="login-danger">*</span></label>
											<input class="form-control" type="date" name="EnrollmentDate"
												>
										</div>
									</div>

									<label for="studentId">Course ID:</label> <select
										name="courseId" class="box">
										<c:forEach items="${courselist}" var="course">
											<option value="${course.courseId}"
												data-course-name="${course.courseName}"
												data-instructor="${course.instructor}">
												${course.courseId}</option>
										</c:forEach>
									</select>

									<div class="col-12 col-sm-4">
										<div class="form-group local-forms">
											<label> Name <span class="login-danger">*</span></label> <input
												type="text" class="form-control" name="CourseName"
												value="${course.courseName}">
										</div>
									</div>


									<div class="col-12 col-sm-4">
										<div class="form-group local-forms">
											<label>Instructor <span class="login-danger">*</span></label>
											<input type="text" class="form-control" name="Instructor"
												value="${course.instructor}">
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





	<script>
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							// Add change event listener to the select element
							document
									.querySelector('select[name="studentId"]')
									.addEventListener(
											'change',
											function() {
												var selectedOption = document
														.querySelector('select[name="studentId"] option:checked');
												var studentName = selectedOption
														.getAttribute('data-student-name');
												var contactNumber = selectedOption
														.getAttribute('data-contact-number');

												

												// Populate the form inputs with the retrieved data
												document
														.querySelector('input[name="StudentName"]').value = studentName;
												document
														.querySelector('input[name="ContactNumber"]').value = contactNumber;

												// Populate enrollment date field
											});
						});

		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							// Add change event listener to the select element
							document
									.querySelector('select[name="courseId"]')
									.addEventListener(
											'change',
											function() {
												var selectedOption = document
														.querySelector('select[name="courseId"] option:checked');
												var courseName = selectedOption
														.getAttribute('data-course-name');
												var instructor = selectedOption
														.getAttribute('data-instructor');

												// Populate the form inputs with the retrieved data
												document
														.querySelector('input[name="CourseName"]').value = courseName;
												document
														.querySelector('input[name="Instructor"]').value = instructor;
											});
						});
	</script>


	<script src="resources/assets/js/jquery-3.6.0.min.js"></script>

	<script
		src="resources/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="resources/assets/js/feather.min.js"></script>

	<script
		src="resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<script src="resources/assets/plugins/select2/js/select2.min.js"></script>

	<script src="resources/assets/plugins/moment/moment.min.js"></script>
	<script src="resources/assets/js/bootstrap-datetimepicker.min.js"></script>

	<script src="resources/assets/js/script.js"></script>
</body>
<%@include file="../../jsp/modules/footer.jsp"%>