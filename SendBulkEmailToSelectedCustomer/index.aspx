<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SendBulkEmailToSelectedCustomer.index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
  </title>
  <!-- plugins:css -->
  <!-- https://pictogrammers.github.io/@mdi/font/1.0.62/ -->
  <link rel="stylesheet" href="assets/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="assets/css/bootstrap-datepicker.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body class="sidebar-light">
<div class="container-scroller">
	<!-- partial:partials/_navbar.html -->
	<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
	  <div class="navbar-menu-wrapper d-flex align-items-stretch justify-content-between">
		<ul class="navbar-nav mr-lg-2 d-none d-lg-flex">
		  <li class="nav-item nav-toggler-item">
			<button class="navbar-toggler align-self-center" type="button" data-toggle="minimize">
			  <span class="mdi mdi-menu"></span>
			</button>
		  </li>

		</ul>
		<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
		
		</div>
		<ul class="navbar-nav navbar-nav-right">

		  <li class="nav-item nav-profile dropdown">
			<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
			  <span class="nav-profile-name">Admin</span>
			</a>
			<div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
			  <div class="dropdown-divider"></div>
			  <a class="dropdown-item" href="logout.aspx">
				<i class="mdi mdi-logout text-primary"></i>
				Logout
			  </a>
			</div>
		  </li>

		  <li class="nav-item nav-toggler-item-right d-lg-none">
			<button class="navbar-toggler align-self-center" type="button" data-toggle="offcanvas">
			  <span class="mdi mdi-menu"></span>
			</button>
		  </li>
		</ul>
	  </div>
	</nav>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
	  <!-- partial:partials/_settings-panel.html -->
	  <!-- partial -->
	  <!-- partial:partials/_sidebar.html -->
	  <nav class="sidebar sidebar-offcanvas" id="sidebar">
		<ul class="nav">
		  <li class="nav-item">
			<a class="nav-link" href="index.aspx">
			  <i class="mdi mdi-view-quilt menu-icon"></i>
			  <span class="menu-title">Dashboard</span>
			</a>
		  </li>
		</ul>
	  </nav>
	  <!-- partial -->
  <div class="main-panel">
		<div class="content-wrapper">
		   <div class="card">
			<div class="card-body">
			  <h1 class="grid_title">Send Bulk Email to Selected Customers in Asp.Net C#</h1>
			  
			  <div class="row grid_box">
				
				<div class="col-12">
					 <form id="form1" runat="server">  
					<div class="table-responsive">
					  <asp:Repeater ID="r1" runat="server">
					<HeaderTemplate>
					<table id="order-listing" class="table">
					  <thead>
						<tr>
							<th width="15%">S.No #</th>
							<th width="45%">Name</th>
							<th width="30%">Email</th>
							<th width="10%">Check</th>
						</tr>
					  </thead>
					  <tbody>
						  </HeaderTemplate>
					<ItemTemplate>					   
						<tr>
							<td><%# Eval("id") %></td>
							<td><%# Eval("name") %></td>
							<td><%# Eval("emailid") %></td>
							<td>
						<asp:CheckBox ID="rbt_details" runat="server" Text='<%# Eval("emailid") %>' ClientIDMode="Static"/>  
					 </td>
						</tr>
						</ItemTemplate>
					<FooterTemplate>
					  </tbody>
					</table>
						  </FooterTemplate>
				</asp:Repeater>
				  </div>
						 <div class="mt-3">
					<asp:Button ID="bttnsubmit" runat="server" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" Text="Send" OnClick="bttnsubmit_Click"/>
				</div>
						 </form>
				</div>
				  <asp:Label ID="lblMessage" runat="server"></asp:Label>
			  </div>
			</div>
		  </div>
			</div>
	  <!-- content-wrapper ends -->
		<!-- partial:partials/_footer.html -->
		<footer class="footer">
		  <div class="d-sm-flex justify-content-center justify-content-sm-between">
			<span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021 <a href="" target="_blank">Billy</a>. All rights reserved.</span>
		  </div>
		</footer>
		<!-- partial -->
	  </div>
	  <!-- main-panel ends -->
		</div>
	<!-- page-body-wrapper ends -->
	</div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="assets/js/vendor.bundle.base.js"></script>
  <script src="assets/js/jquery.dataTables.js"></script>
  <script src="assets/js/dataTables.bootstrap4.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="assets/js/Chart.min.js"></script>
  <script src="assets/js/bootstrap-datepicker.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="assets/js/off-canvas.js"></script>
  <script src="assets/js/hoverable-collapse.js"></script>
  <script src="assets/js/template.js"></script>
  <script src="assets/js/settings.js"></script>
  <script src="assets/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="assets/js/data-table.js"></script>
  <!-- End custom js for this page-->
</body>
</html>