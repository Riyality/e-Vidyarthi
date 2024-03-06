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
					<h3 class="page-title">Teacher</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Dashboard/Teacher</a></li>
						
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
								
							</div>
						</div>
						<!-- /Page Header -->
						<div class="table-responsive">
							<table
								class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
								<thead class="student-thread"> 
								<tr>
										<th>teacherId</th>
										<th>teacherName</th>
										<th>subject</th>
										<th>email</th>
										<th>phone_Number</th>
										<th>address</th>
										<th>degree</th>
										<th>salary</th>
									<th class="">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="tr" items="${teacherList}">
										<tr>
											<td>${tr.teacherId}</td>
											<td>${tr.teacherName}</td>
											<td>${tr.subject}</td>
											<td>${tr.email}</td>
											<td>${tr.phone_Number}</td>
											<td>${tr.address}</td>
											<td>${tr.degree}</td>
										    <td>${tr.salary}</td>
									<td class="">
												<div class="">
													<a 
													href="teacher_update?teacherId=${tr.teacherId}&teacherName=${tr.teacherName}&subject=${tr.subject}&email=${tr.email}&phone_Number=${tr.phone_Number}&address=${tr.address}&degree=${tr.degree}&salary=${tr.salary}"
														class="btn btn-sm g-danger-light"> <i
														 class="feather-edit" style="color: #008B8B"> </i></a>
														 <a 
														 class="btn btn-sm bg-danger-light" href="#"
														 onClick="confirmDelete(${tr.teacherId});"> <i
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

	<script>
    function confirmDelete(teacherId) {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href = 'teacher_delete?teacherId='+teacherId;
        }
    }
</script>

	<!-- Datatables JS -->
	<script
		src="<c:url value="resources/assets/plugins/datatables/datatables.min.js"/>"></script>



	<%@include file="../../jsp/modules/footer.jsp"%>