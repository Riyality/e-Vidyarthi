<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../jsp/modules/header.jsp" />

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false" %>
		
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Edit teacher</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="library.html">teacher</a></li>
									<li class="breadcrumb-item active">Edit Teacher</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card">
								<div class="card-body">
									<form action="updateTeacher" method="post">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>teacher Information</span></h5>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label> teacher Id <span class="login-danger">*</span></label>
													<input type="text" class="form-control"  name="teacherId" value="${param.teacherId }">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>teacher Name<span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="teacherName" value="${param.teacherName}">

												</div>
											</div>
												<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>subject<span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="subject" value="${param.subject }">
												</div>
											</div>
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Email <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="email" value="${param.email }">
												</div>
											</div>
												<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>phone_Number <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="phone_Number" value="${param.phone_Number }">
												</div>
											</div>
												<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>address <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="address" value="${param.address }">
												</div>
											</div>
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>degree <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="degree" value="${param.degree }">
												</div>
											</div>
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>salary <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="salary" value="${param.salary }">
												</div>
											</div>
												
											
											<div class="col-12">
												<div class="teacher-submit">
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