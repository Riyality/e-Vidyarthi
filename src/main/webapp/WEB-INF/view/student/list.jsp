
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../jsp/modules/header.jsp"%>

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false" %>

			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Student</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
									<li class="breadcrumb-item active">Student</li>
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
											<div class="col">
												<h3 class="page-title">Student</h3>
											</div>
											<div class="col-auto text-end float-end ms-auto download-grp">
												<a href="" class="btn btn-outline-primary me-2"><i class="fas fa-download"></i> Download</a>
												<a href="add-books.jsp" class="btn btn-primary"><i class="fas fa-plus"></i></a>
											</div>
										</div>
									</div>
									
									
									
									
									<!-- /Page Header -->
									<div class="table-responsive">
										<table class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
											<thead class="student-thread">
												<tr>
													<th>Student Id</th>
													<th>Student Name</th>
													<th>Contact Number</th>
													 <th>Email </th>
													<th>Enrollment Date</th>
													<th>Status</th>
													
													<th class="text-end">Action</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="st" items="${studentList }">
												<tr>
												    <td>${st.studentId}</td>
											        <td>${st.studentName}</td>
											        <td>${st.contactNumber}</td>
											        <td>${st.email}</td>
											        <td>${st.enrollmentDate}</td>
											        <td>${st.studentStatus}</td>
											        
</div>
</td>

													 <td class="text-end">
														<div class="actions">
															
															<a href="update?StudentId=${st.studentId}&StudentName=${st.studentName}&ContactNumber=${st.contactNumber}&Email=${st.email}&EnrollmentDate=${st.enrollmentDate}&Status=${st.studentStatus}
															"class="btn btn-sm bg-danger-light" ><i class="feather-edit" style="color:#008B8B"></i></a> 
															
															<a  class="btn btn-sm bg-danger-light" href="#" onclick="confirmDelete(${st.studentId});">
                                                        <i class="feather-trash-2"  style= "color:red"></i>
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
    function confirmDelete(studentId) {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href = 'delete?studentId=' + studentId;
        }
    }
</script>
		
	
		<!-- Datatables JS -->
		<script src="<c:url value="resources/assets/plugins/datatables/datatables.min.js"/>"></script>
		
	
	
<%@include file="../../jsp/modules/footer.jsp"%>