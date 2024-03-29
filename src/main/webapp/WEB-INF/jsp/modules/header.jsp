<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Admin Dashboard</title>
<link rel="shortcut icon" href="resources/assets/img/favicon.png">
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
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/assets/css/style.css">
</head>

<body>

	<div class="main-wrapper">

		<div class="header">

			<div class="header-left">
				<a href="index.html" class="logo"> <img
					src="resources/assets/img/logo.png" alt="Logo">
				</a> <a href="index.html" class="logo logo-small"> <img
					src="resources/assets/img/logo-small.png" alt="Logo" width="30"
					height="30">
				</a>
			</div>
			<div class="menu-toggle">
				<a href="javascript:void(0);" id="toggle_btn"> <i
					class="fas fa-bars"></i>
				</a>
			</div>

			<div class="top-nav-search">
				<form>
					<input type="text" class="form-control" placeholder="Search here">
					<button class="btn" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>
			<a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i>
			</a>

			<ul class="nav user-menu">
				<li class="nav-item dropdown noti-dropdown language-drop me-2">
					<a href="#" class="dropdown-toggle nav-link header-nav-list"
					data-bs-toggle="dropdown"> <img
						src="resources/assets/img/icons/header-icon-01.svg" alt="">
				</a>
					<div class="dropdown-menu ">
						<div class="noti-content">
							<div>
								<a class="dropdown-item" href="javascript:;"><i
									class="flag flag-lr me-2"></i>English</a> <a class="dropdown-item"
									href="javascript:;"><i class="flag flag-bl me-2"></i>Francais</a>
								<a class="dropdown-item" href="javascript:;"><i
									class="flag flag-cn me-2"></i>Turkce</a>
							</div>
						</div>
					</div>
				</li>

				<li class="nav-item dropdown noti-dropdown me-2"><a href="#"
					class="dropdown-toggle nav-link header-nav-list"
					data-bs-toggle="dropdown"> <img
						src="resources/assets/img/icons/header-icon-05.svg" alt="">
				</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="resources/assets/img/profiles/avatar-02.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Carlson Tech</span> has approved <span
														class="noti-title">your estimate</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">4 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="resources/assets/img/profiles/avatar-11.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">International Software Inc</span>
													has sent you a invoice in the amount of <span
														class="noti-title">$218</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">6 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="resources/assets/img/profiles/avatar-17.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">John Hendry</span> sent a
													cancellation request <span class="noti-title">Apple
														iPhone XR</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">8 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="resources/assets/img/profiles/avatar-13.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Mercury Software Inc</span> added
													a new product <span class="noti-title">Apple MacBook
														Pro</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">12 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="#">View all Notifications</a>
						</div>
					</div></li>

				<li class="nav-item zoom-screen me-2"><a href="#"
					class="nav-link header-nav-list win-maximize"> <img
						src="resources/assets/img/icons/header-icon-04.svg" alt="">
				</a></li>

				<li class="nav-item dropdown has-arrow new-user-menus"><a
					href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
						<span class="user-img"> <img class="rounded-circle"
							src="resources/assets/img/profiles/avatar-01.jpg" width="31"
							alt="Soeng Souy">
							<div class="user-text">
								<h6>Soeng Souy</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
					</span>
				</a>
					<div class="dropdown-menu">
						<div class="user-header">
							<div class="avatar avatar-sm">
								<img src="resources/assets/img/profiles/avatar-01.jpg"
									alt="User Image" class="avatar-img rounded-circle">
							</div>
							<div class="user-text">
								<h6>Soeng Souy</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
						</div>
						<a class="dropdown-item" href="profile.html">My Profile</a> <a
							class="dropdown-item" href="inbox.html">Inbox</a> <a
							class="dropdown-item" href="login.html">Logout</a>
					</div></li>

			</ul>

		</div>



		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="menu-title"><span>Main Menu</span></li>
						<li class="submenu active"><a href="#"><i
								class="feather-grid"></i> <span> Dashboard</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="index.html" class="active">Admin Dashboard</a></li>
								<li><a href="teacher-dashboard.html">Teacher Dashboard</a></li>
								<li><a href="student-dashboard.html">Student Dashboard</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-graduation-cap"></i> <span> Students</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="student-form"> Add</a></li>
								<li><a href="list"> List</a></li>

							</ul></li>

						<li class="submenu"><a href="#"><i
								class="fas fa-graduation-cap"></i> <span> Course</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="course-form"> Add</a></li>
								<li><a href="course_list"> List</a></li>

							</ul></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-chalkboard-teacher"></i> <span> Teachers</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="teachers.html">Teacher List</a></li>
								<li><a href="teacher-details.html">Teacher View</a></li>
								<li><a href="add-teacher.html">Teacher Add</a></li>
								<li><a href="edit-teacher.html">Teacher Edit</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-building"></i> <span> Departments</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="departments.html">Department List</a></li>
								<li><a href="add-department.html">Department Add</a></li>
								<li><a href="edit-department.html">Department Edit</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-book-reader"></i> <span> Subjects</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="subjects.html">Subject List</a></li>
								<li><a href="add-subject.html">Subject Add</a></li>
								<li><a href="edit-subject.html">Subject Edit</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-clipboard"></i> <span> Invoices</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="invoices.html">Invoices List</a></li>
								<li><a href="invoice-grid.html">Invoices Grid</a></li>
								<li><a href="add-invoice.html">Add Invoices</a></li>
								<li><a href="edit-invoice.html">Edit Invoices</a></li>
								<li><a href="view-invoice.html">Invoices Details</a></li>
								<li><a href="invoices-settings.html">Invoices Settings</a></li>
							</ul></li>
						<li class="menu-title"><span>Management</span></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-file-invoice-dollar"></i> <span> Accounts</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="fees-collections.html">Fees Collection</a></li>
								<li><a href="expenses.html">Expenses</a></li>
								<li><a href="salary.html">Salary</a></li>
								<li><a href="add-fees-collection.html">Add Fees</a></li>
								<li><a href="add-expenses.html">Add Expenses</a></li>
								<li><a href="add-salary.html">Add Salary</a></li>
							</ul></li>
						<li><a href="holiday.html"><i class="fas fa-holly-berry"></i>
								<span>Holiday</span></a></li>
						<li><a href="fees.html"><i class="fas fa-comment-dollar"></i>
								<span>Fees</span></a></li>
						<li><a href="exam.html"><i class="fas fa-clipboard-list"></i>
								<span>Exam list</span></a></li>
						<li><a href="event.html"><i class="fas fa-calendar-day"></i>
								<span>Events</span></a></li>
						<li><a href="time-table.html"><i class="fas fa-table"></i>
								<span>Time Table</span></a></li>
						<li><a href="library.html"><i class="fas fa-book"></i> <span>Library</span></a>
						</li>

						<li><a href="settings.html"><i class="fas fa-cog"></i> <span>Settings</span></a>
						</li>
						<li class="menu-title"><span>Pages</span></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-shield-alt"></i> <span> Authentication </span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="forgot-password.html">Forgot Password</a></li>
								<li><a href="error-404.html">Error Page</a></li>
							</ul></li>

						<li class="menu-title"><span>Others</span></li>
						<li><a href="sports.html"><i class="fas fa-baseball-ball"></i>
								<span>Sports</span></a></li>
						<li><a href="hostel.html"><i class="fas fa-hotel"></i> <span>Hostel</span></a>
						</li>
						<li><a href="transport.html"><i class="fas fa-bus"></i> <span>Transport</span></a>
						</li>
						<li class="menu-title"><span>UI Interface</span></li>


						<li class="submenu"><a href="#"><i class="fas fa-columns"></i>
								<span> Forms </span> <span class="menu-arrow"></span></a>
							<ul>
								<li><a href="form-basic-inputs.html">Basic Inputs </a></li>
								<li><a href="form-input-groups.html">Input Groups </a></li>
								<li><a href="form-horizontal.html">Horizontal Form </a></li>
								<li><a href="form-vertical.html"> Vertical Form </a></li>
								<li><a href="form-mask.html"> Form Mask </a></li>
								<li><a href="form-validation.html"> Form Validation </a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="fas fa-table"></i>
								<span> Tables </span> <span class="menu-arrow"></span></a>
							<ul>
								<li><a href="tables-basic.html">Basic Tables </a></li>
								<li><a href="data-tables.html">Data Table </a></li>
							</ul></li>

					</ul>
				</div>
			</div>
		</div>

