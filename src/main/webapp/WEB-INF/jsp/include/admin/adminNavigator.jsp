<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

	<!-- Main Header -->
	<header class="main-header">

		<!-- Logo -->
		<a href="index2.html" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>LT</span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Admin</b>LTE</span>
		</a>

		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>
			<!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu">
						<!-- Menu toggle button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-envelope-o"></i>
							<span class="label label-success">4</span>
						</a>
						<ul class="dropdown-menu">
							<li class="header">You have 4 messages</li>
							<li>
								<!-- inner menu: contains the messages -->
								<ul class="menu">
									<li><!-- start message -->
										<a href="#">
											<div class="pull-left">
												<!-- User Image -->
												<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
											</div>
											<!-- Message title and timestamp -->
											<h4>
												Support Team
												<small><i class="fa fa-clock-o"></i> 5 mins</small>
											</h4>
											<!-- The message -->
											<p>Why not buy a new awesome theme?</p>
										</a>
									</li>
									<!-- end message -->
								</ul>
								<!-- /.menu -->
							</li>
							<li class="footer"><a href="#">See All Messages</a></li>
						</ul>
					</li>
					<!-- /.messages-menu -->

					<!-- Notifications Menu -->
					<li class="dropdown notifications-menu">
						<!-- Menu toggle button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-bell-o"></i>
							<span class="label label-warning">10</span>
						</a>
						<ul class="dropdown-menu">
							<li class="header">You have 10 notifications</li>
							<li>
								<!-- Inner Menu: contains the notifications -->
								<ul class="menu">
									<li><!-- start notification -->
										<a href="#">
											<i class="fa fa-users text-aqua"></i> 5 new members joined today
										</a>
									</li>
									<!-- end notification -->
								</ul>
							</li>
							<li class="footer"><a href="#">View all</a></li>
						</ul>
					</li>
					<!-- Tasks Menu -->
					<li class="dropdown tasks-menu">
						<!-- Menu Toggle Button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-flag-o"></i>
							<span class="label label-danger">9</span>
						</a>
						<ul class="dropdown-menu">
							<li class="header">You have 9 tasks</li>
							<li>
								<!-- Inner menu: contains the tasks -->
								<ul class="menu">
									<li><!-- Task item -->
										<a href="#">
											<!-- Task title and progress text -->
											<h3>
												Design some buttons
												<small class="pull-right">20%</small>
											</h3>
											<!-- The progress bar -->
											<div class="progress xs">
												<!-- Change the css width attribute to simulate progress -->
												<div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
													 aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">20% Complete</span>
												</div>
											</div>
										</a>
									</li>
									<!-- end task item -->
								</ul>
							</li>
							<li class="footer">
								<a href="#">View all tasks</a>
							</li>
						</ul>
					</li>
					<!-- User Account Menu -->
					<li class="dropdown user user-menu">
						<!-- Menu Toggle Button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<!-- The user image in the navbar-->
							<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
							<!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs">Alexander Pierce</span>
						</a>
						<ul class="dropdown-menu">
							<!-- The user image in the menu -->
							<li class="user-header">
								<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

								<p>
									Alexander Pierce - Web Developer
									<small>Member since Nov. 2012</small>
								</p>
							</li>
							<!-- Menu Body -->
							<li class="user-body">
								<div class="row">
									<div class="col-xs-4 text-center">
										<a href="#">Followers</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="#">Sales</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="#">Friends</a>
									</div>
								</div>
								<!-- /.row -->
							</li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="#" class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul>
					</li>
					<!-- Control Sidebar Toggle Button -->
					<li>
						<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
					</li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Alexander Pierce</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search...">
				<span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
			<li class="active treeview">
				<a href="#">
					<i class="fa fa-dashboard"></i> <span>Dashboard</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-files-o"></i>
					<span>Layout Options</span>
					<span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="admin_category_list"><i class="fa fa-circle-o"></i> 分类管理</a></li>
					<li><a href="admin_user_list"><i class="fa fa-circle-o"></i> 用户管理</a></li>
					<li><a href="admin_order_list"><i class="fa fa-circle-o"></i> 订单管理</a></li>
				</ul>
			</li>
			<li>
				<a href="pages/widgets.html">
					<i class="fa fa-th"></i> <span>Widgets</span>
					<span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span>
				</a>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-pie-chart"></i>
					<span>Charts</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
					<li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
					<li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
					<li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-laptop"></i>
					<span>UI Elements</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
					<li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
					<li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
					<li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
					<li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
					<li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-edit"></i> <span>Forms</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
					<li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
					<li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-table"></i> <span>Tables</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
					<li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
				</ul>
			</li>
			<li>
				<a href="pages/calendar.html">
					<i class="fa fa-calendar"></i> <span>Calendar</span>
					<span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
				</a>
			</li>
			<li>
				<a href="pages/mailbox/mailbox.html">
					<i class="fa fa-envelope"></i> <span>Mailbox</span>
					<span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
				</a>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-folder"></i> <span>Examples</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
					<li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
					<li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
					<li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
					<li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
					<li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
					<li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
					<li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
					<li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-share"></i> <span>Multilevel</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
					<li class="treeview">
						<a href="#"><i class="fa fa-circle-o"></i> Level One
							<span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
						</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
							<li class="treeview">
								<a href="#"><i class="fa fa-circle-o"></i> Level Two
									<span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
								</a>
								<ul class="treeview-menu">
									<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
									<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
				</ul>
			</li>
			<li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
			<li class="header">LABELS</li>
			<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>

