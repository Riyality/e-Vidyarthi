<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../../jsp/modules/header.jsp"%>

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false"%>

<!-- Page Wrapper -->
<div class="page-wrapper">
	<div class="content container-fluid">

		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-center">
				<div class="col">
					<h3 class="page-title">Course</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Dashboard/course</a></li>
						
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-sm-12">
				<div class="card card-table">
					<div class="card-body">
						<!-- Page Header -->
						<div class="page-header">
							<div class="row align-items-center">
								
								<!-- <div class="col-auto text-end float-end ms-auto download-grp">
									<a href="" class="btn btn-outline-primary me-2"><i
										class="fas fa-download"></i> Download</a> <a href="add-books.jsp"
										class="btn btn-primary"><i class="fas fa-plus"></i></a>
								</div> -->
							</div>
						</div>
						<!-- /Page Header -->
						<div class="table-responsive">
							<table
								class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
								<thead class="student-thread"> 
								<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Instructor</th>
										<th>Schedule</th>
										<th>Capacity</th>
									<th class="">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="cs" items="${courselist}">
										<tr>
											<td>${cs.courseId}</td>
											<td>${cs.courseName}</td>
											<td>${cs.instructor}</td>
											<td>${cs.cSchedule}</td>
											<td>${cs.capacity}</td>
									<td class="">
												<div class="">
													<a 
													href="course-updated?courseId=${cs.courseId}&CourseName=${cs.courseName}&Instructor=${cs.instructor}&CSchedule=${cs.cSchedule}&Capacity=${cs.capacity}"
														
														class="btn btn-sm g-danger-light"> <i
														 class="feather-edit" style="color: #008B8B"> </i></a>
														 <a 
														 class="btn btn-sm bg-danger-light" href="#"
														 onClick="confirmDelete(${cs.courseId});"> <i
														 class="feather-trash-2" style="color: red"></i>
													</a>
												</div>
											</td>
										</tr> 
									</c:forEach> 
							</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<script>
    function confirmDelete(courseId) {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href ='course-delete?courseId=' + courseId;
        }
    }
</script>

	<!-- Datatables JS -->
	<script
		src="<c:url value="resources/assets/plugins/datatables/datatables.min.js"/>"></script>



	<%@include file="../../jsp/modules/footer.jsp"%>