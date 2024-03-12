<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../jsp/modules/header.jsp"%>

<div class="page-wrapper">
	<div class="content container-fluid">

		<div class="page-header">
			<div class="row">
				<div class="col-sm-12">
					<div class="page-sub-header">
						<h3 class="page-title">Welcome Admin!</h3>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active">Admin</li>
						</ul>
					</div>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-xl-3 col-sm-6 col-12 d-flex">
				<div class="card bg-comman w-100">
					<div class="card-body">
						<div
							class="db-widgets d-flex justify-content-between align-items-center">
							<div class="db-info">
								<h6>Students</h6>
								<h3>${numberOfStudents}</h3>
							</div>
							<div class="db-icon">
								<img src="resources/assets/img/icons/dash-icon-01.svg"
									alt="Dashboard Icon">
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col-xl-3 col-sm-6 col-12 d-flex">
				<div class="card bg-comman w-100">
					<div class="card-body">
						<div
							class="db-widgets d-flex justify-content-between align-items-center">
							<div class="db-info">
								<h6>Teacher</h6>
								<h3>${numberOfTeacher}</h3>
							</div>
							<div class="db-icon">
								<img src="resources/assets/img/icons/dash-icon-01.svg"
									alt="Dashboard Icon">
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="col-xl-3 col-sm-6 col-12 d-flex">
				<div class="card bg-comman w-100">
					<div class="card-body">
						<div
							class="db-widgets d-flex justify-content-between align-items-center">
							<div class="db-info">
								<h6>Awards</h6>
								<h3>50+</h3>
							</div>
							<div class="db-icon">
								<img src="resources/assets/img/icons/dash-icon-02.svg"
									alt="Dashboard Icon">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 col-12 d-flex">
				<div class="card bg-comman w-100">
					<div class="card-body">
						<div
							class="db-widgets d-flex justify-content-between align-items-center">
							<div class="db-info">
								<h6>Department</h6>
								<h3>30+</h3>
							</div>
							<div class="db-icon">
								<img src="resources/assets/img/icons/dash-icon-03.svg"
									alt="Dashboard Icon">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 col-12 d-flex">
				<div class="card bg-comman w-100">
					<div class="card-body">
						<div
							class="db-widgets d-flex justify-content-between align-items-center">
							<div class="db-info">
								<h6>Revenue</h6>
								<h3>$505</h3>
							</div>
							<div class="db-icon">
								<img src="resources/assets/img/icons/dash-icon-04.svg"
									alt="Dashboard Icon">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 col-lg-6">

				<div class="card card-chart">
					<div class="card-header">
						<div class="row align-items-center">
							<div class="col-6">
								<h5 class="card-title">Overview</h5>
							</div>
							<div class="col-6">
								<ul class="chart-list-out">
									<li><span class="circle-blue"></span>Teacher</li>
									<li><span class="circle-green"></span>Student</li>
									<li class="star-menus"><a href="javascript:;"><i
											class="fas fa-ellipsis-v"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div id="apexcharts-area"></div>
					</div>
				</div>

			</div>
			<div class="col-md-12 col-lg-6">

				<div class="card card-chart">
					<div class="card-header">
						<div class="row align-items-center">
							<div class="col-6">
								<h5 class="card-title">Number of Students</h5>
							</div>
							<div class="col-6">
								<ul class="chart-list-out">
									<li><span class="circle-blue"></span>Girls</li>
									<li><span class="circle-green"></span>Boys</li>
									<li class="star-menus"><a href="javascript:;"><i
											class="fas fa-ellipsis-v"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div id="bar"></div>
					</div>
				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-xl-6 d-flex">

				<div class="card flex-fill student-space comman-shadow">
					<div class="card-header d-flex align-items-center">
						<h5 class="card-title">Star Students</h5>
						<ul class="chart-list-out student-ellips">
							<li class="star-menus"><a href="javascript:;"><i
									class="fas fa-ellipsis-v"></i></a></li>
						</ul>
					</div>
					<div class="row">
						<div class="col-sm-12">

							<div class="card card-table">
								<div class="card-body">
									<div class="table-responsive">
										<table
											class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
											<thead class="student-thread">
												<tr>
													<th>Id</th>
													<th>Name</th>
													<th>Contact Number</th>
													<th>Email</th>
													<th>Enrollment Date</th>
													<th>Qualification</th>
													<th>Marks</th>
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
														<td>${st.highestQualification}</td>
														<td>${st.marks}</td>
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
			<div class="col-xl-6 d-flex">

				<div class="card flex-fill comman-shadow">
					<div class="card-header d-flex align-items-center">
						<h5 class="card-title ">Student Activity</h5>
						<ul class="chart-list-out student-ellips">
							<li class="star-menus"><a href="javascript:;"><i
									class="fas fa-ellipsis-v"></i></a></li>
						</ul>
					</div>
					<div class="card-body">
						<div class="activity-groups">
							<div class="activity-awards">
								<div class="award-boxs">
									<img src="resources/assets/img/icons/award-icon-01.svg"
										alt="Award">
								</div>
								<div class="award-list-outs">
									<h4>1st place in "Chess”</h4>
									<h5>John Doe won 1st place in "Chess"</h5>
								</div>
								<div class="award-time-list">
									<span>1 Day ago</span>
								</div>
							</div>
							<div class="activity-awards">
								<div class="award-boxs">
									<img src="resources/assets/img/icons/award-icon-02.svg"
										alt="Award">
								</div>
								<div class="award-list-outs">
									<h4>Participated in "Carrom"</h4>
									<h5>Justin Lee participated in "Carrom"</h5>
								</div>
								<div class="award-time-list">
									<span>2 hours ago</span>
								</div>
							</div>
							<div class="activity-awards">
								<div class="award-boxs">
									<img src="resources/assets/img/icons/award-icon-03.svg"
										alt="Award">
								</div>
								<div class="award-list-outs">
									<h4>Internation conference in "St.John School"</h4>
									<h5>Justin Leeattended internation conference in "St.John
										School"</h5>
								</div>
								<div class="award-time-list">
									<span>2 Week ago</span>
								</div>
							</div>
							<div class="activity-awards mb-0">
								<div class="award-boxs">
									<img src="resources/assets/img/icons/award-icon-04.svg"
										alt="Award">
								</div>
								<div class="award-list-outs">
									<h4>Won 1st place in "Chess"</h4>
									<h5>John Doe won 1st place in "Chess"</h5>
								</div>
								<div class="award-time-list">
									<span>3 Day ago</span>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="row">
			<div class="col-xl-3 col-sm-6 col-12">
				<div class="card flex-fill fb sm-box">
					<div class="social-likes">
						<p>Like us on facebook</p>
						<h6>50,095</h6>
					</div>
					<div class="social-boxs">
						<img src="resources/assets/img/icons/social-icon-01.svg"
							alt="Social Icon">
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 col-12">
				<div class="card flex-fill twitter sm-box">
					<div class="social-likes">
						<p>Follow us on twitter</p>
						<h6>48,596</h6>
					</div>
					<div class="social-boxs">
						<img src="resources/assets/img/icons/social-icon-02.svg"
							alt="Social Icon">
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 col-12">
				<div class="card flex-fill insta sm-box">
					<div class="social-likes">
						<p>Follow us on instagram</p>
						<h6>52,085</h6>
					</div>
					<div class="social-boxs">
						<img src="resources/assets/img/icons/social-icon-03.svg"
							alt="Social Icon">
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 col-12">
				<div class="card flex-fill linkedin sm-box">
					<div class="social-likes">
						<p>Follow us on linkedin</p>
						<h6>69,050</h6>
					</div>
					<div class="social-boxs">
						<img src="resources/assets/img/icons/social-icon-04.svg"
							alt="Social Icon">
					</div>
				</div>
			</div>
		</div>
	</div>

</div>


<script src="resources/assets/js/jquery-3.6.0.min.js"></script>
<script
	src="resources/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/js/feather.min.js"></script>
<script
	src="resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="resources/assets/plugins/apexchart/apexcharts.min.js"></script>
<script src="resources/assets/plugins/apexchart/chart-data.js"></script>
<script src="resources/assets/js/script.js"></script>
</body>

<%@include file="../jsp/modules/footer.jsp"%>