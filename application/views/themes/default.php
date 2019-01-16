<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<?php

		if( !empty($meta) )
		foreach($meta as $name=>$content){
			echo "\n\t\t";
			?><meta name="<?php echo $name; ?>" content="<?php echo $content; ?>" /><?php
				 }
		echo "\n";

	?>

	<title>Project Monitoring Information System (PMIS)</title>

	<!-- Bootstrap Core CSS -->
	<link href="<?= asset('vendor/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet">

	<!-- MetisMenu CSS -->
	<link href="<?= asset('vendor/metisMenu/metisMenu.min.css') ?>" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="<?= asset('dist/css/sb-admin-2.css') ?>" rel="stylesheet">

	<!-- Morris Charts CSS -->
	<link href="<?= asset('vendor/morrisjs/morris.css') ?>" rel="stylesheet">

	<!-- Custom Fonts -->
	<link href="<?= asset('vendor/font-awesome/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css">

	<link href="<?= asset('css/theme_default_overwrite.css') ?>" rel="stylesheet">

	<?php
		/** -- Copy from here -- */

		if(!empty($canonical))
		{
			echo "\n\t\t";
			?><link rel="canonical" href="<?php echo $canonical?>" /><?php

		}
		echo "\n\t";

		foreach($css as $file){
		 	echo "\n\t\t";
			?><link rel="stylesheet" href="<?php echo $file; ?>" type="text/css" /><?php
		} echo "\n\t";

		/** -- to here -- */
	?>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div id="wrapper">

	    <!-- Navigation -->
	    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
	    	<div class="navbar-header">
	    	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	    	        <span class="sr-only">Toggle navigation</span>
	    	        <span class="icon-bar"></span>
	    	        <span class="icon-bar"></span>
	    	        <span class="icon-bar"></span>
	    	    </button>
	    	    <a class="navbar-brand" href="{{ url('dashboard') }}">Project Monitoring Information System (PMIS)</a>
	    	</div>
	    	<!-- /.navbar-header -->
	    	<ul class="nav navbar-top-links navbar-right">
	    	    <li class="dropdown">
	    	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	    	            <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
	    	        </a>
	    	        <ul class="dropdown-menu dropdown-messages">
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <strong>John Smith</strong>
	    	                        <span class="pull-right text-muted">
	    	                            <em>Yesterday</em>
	    	                        </span>
	    	                    </div>
	    	                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <strong>John Smith</strong>
	    	                        <span class="pull-right text-muted">
	    	                            <em>Yesterday</em>
	    	                        </span>
	    	                    </div>
	    	                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <strong>John Smith</strong>
	    	                        <span class="pull-right text-muted">
	    	                            <em>Yesterday</em>
	    	                        </span>
	    	                    </div>
	    	                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a class="text-center" href="#">
	    	                    <strong>Read All Messages</strong>
	    	                    <i class="fa fa-angle-right"></i>
	    	                </a>
	    	            </li>
	    	        </ul>
	    	        <!-- /.dropdown-messages -->
	    	    </li>
	    	    <!-- /.dropdown -->
	    	    <li class="dropdown">
	    	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	    	            <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
	    	        </a>
	    	        <ul class="dropdown-menu dropdown-tasks">
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <p>
	    	                            <strong>Task 1</strong>
	    	                            <span class="pull-right text-muted">40% Complete</span>
	    	                        </p>
	    	                        <div class="progress progress-striped active">
	    	                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
	    	                                <span class="sr-only">40% Complete (success)</span>
	    	                            </div>
	    	                        </div>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <p>
	    	                            <strong>Task 2</strong>
	    	                            <span class="pull-right text-muted">20% Complete</span>
	    	                        </p>
	    	                        <div class="progress progress-striped active">
	    	                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
	    	                                <span class="sr-only">20% Complete</span>
	    	                            </div>
	    	                        </div>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <p>
	    	                            <strong>Task 3</strong>
	    	                            <span class="pull-right text-muted">60% Complete</span>
	    	                        </p>
	    	                        <div class="progress progress-striped active">
	    	                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
	    	                                <span class="sr-only">60% Complete (warning)</span>
	    	                            </div>
	    	                        </div>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <p>
	    	                            <strong>Task 4</strong>
	    	                            <span class="pull-right text-muted">80% Complete</span>
	    	                        </p>
	    	                        <div class="progress progress-striped active">
	    	                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
	    	                                <span class="sr-only">80% Complete (danger)</span>
	    	                            </div>
	    	                        </div>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a class="text-center" href="#">
	    	                    <strong>See All Tasks</strong>
	    	                    <i class="fa fa-angle-right"></i>
	    	                </a>
	    	            </li>
	    	        </ul>
	    	        <!-- /.dropdown-tasks -->
	    	    </li>
	    	    <!-- /.dropdown -->
	    	    <li class="dropdown">
	    	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	    	            <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
	    	        </a>
	    	        <ul class="dropdown-menu dropdown-alerts">
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <i class="fa fa-comment fa-fw"></i> New Comment
	    	                        <span class="pull-right text-muted small">4 minutes ago</span>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
	    	                        <span class="pull-right text-muted small">12 minutes ago</span>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <i class="fa fa-envelope fa-fw"></i> Message Sent
	    	                        <span class="pull-right text-muted small">4 minutes ago</span>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <i class="fa fa-tasks fa-fw"></i> New Task
	    	                        <span class="pull-right text-muted small">4 minutes ago</span>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a href="#">
	    	                    <div>
	    	                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
	    	                        <span class="pull-right text-muted small">4 minutes ago</span>
	    	                    </div>
	    	                </a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li>
	    	                <a class="text-center" href="#">
	    	                    <strong>See All Alerts</strong>
	    	                    <i class="fa fa-angle-right"></i>
	    	                </a>
	    	            </li>
	    	        </ul>
	    	        <!-- /.dropdown-alerts -->
	    	    </li>
	    	    <!-- /.dropdown -->
	    	    <li class="dropdown">
	    	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	    	            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
	    	        </a>
	    	        <ul class="dropdown-menu dropdown-user">
	    	            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
	    	            </li>
	    	            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
	    	            </li>
	    	            <li class="divider"></li>
	    	            <li><a href="<?= base_url('/') ?>"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
	    	            </li>
	    	        </ul>
	    	        <!-- /.dropdown-user -->
	    	    </li>
	    	    <!-- /.dropdown -->
	    	</ul>
	    	<!-- /.navbar-top-links -->
	    	<?php $uri_string = $this->uri->uri_string(); ?>
	    	<div class="navbar-default sidebar" role="navigation">
	    	    <div class="sidebar-nav navbar-collapse">
	    	        <ul class="nav" id="side-menu">
	    	            <li class="sidebar-search">
	    	                <div class="input-group custom-search-form">
	    	                    <input type="text" class="form-control" placeholder="Search...">
	    	                    <span class="input-group-btn">
	    	                        <button class="btn btn-default" type="button">
	    	                            <i class="fa fa-search"></i>
	    	                        </button>
	    	                    </span>
	    	                </div>
	    	                <!-- /input-group -->
	    	            </li>
	    	            <li>
	    	                <a href="<?= base_url('dashboard') ?>" class="<?= ( $uri_string == 'dashboard' ) ? 'active':'' ?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
	    	            </li>
	    	            <li>
	    	                <a href="#"><i class="fa fa-info-circle fa-fw"></i> Project Information<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level">
	    	                    <li>
	    	                        <a href="<?= base_url('approved_cost') ?>">Approved Cost</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">ADP<span class="fa arrow"></span></a>
	    	                        <ul class="nav nav-third-level">
	    	                            <li>
	    	                                <a href="<?= base_url('adp') ?>">ADP (FY 2018-19)</a>
	    	                            </li>
	    	                            <li>
	    	                                <a href="<?= base_url('#') ?>">ADP (FY 2017-18)</a>
	    	                            </li>
	    	                            <li>
	    	                                <a href="<?= base_url('#') ?>">ADP (FY 2019-20)</a>
	    	                            </li>
	    	                            <li>
	    	                                <a href="<?= base_url('#') ?>">ADP (FY 2020-21)</a>
	    	                            </li> 
	    	                        </ul>
	    	                    </li>
	    	                </ul>
	    	            </li>
	    	            <li>
	    	                <a href="#"><i class="fa fa-tasks fa-fw"></i> Physical Progress<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level">
	    	                    <li>
	    	                        <a href="#">Result Framework</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('mem') ?>">M&E Matrix</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Key Agreed Actions (KAA)<span class="fa arrow"></span></a>
	    	                        <ul class="nav nav-third-level">
	    	                            <li>
	    	                                <a href="<?= base_url('kaa_dncc') ?>">DNCC</a>
	    	                            </li>
	    	                            <li>
	    	                                <a href="<?= '#' ?>">DDM</a>
	    	                            </li>
	    	                            <li>
	    	                                <a href="<?= '#' ?>">RAJUK</a>
	    	                            </li>
	    	                            <li>
	    	                                <a href="<?= '#' ?>">PCMU</a>
	    	                            </li>
	    	                        </ul>
	    	                        <!-- /.nav-third-level -->
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= '#' //base_url('quarterly_expenditure') ?>">Quarterly Expenditure</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Component</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Implementing Agency</a>
	    	                    </li>
	    	                </ul>
	    	            </li>
	    	            <li>
	    	                <a href="#"><i class="fa fa-money fa-fw"></i> Financial Progress<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level">
	    	                    <li>
	    	                        <a href="<?= base_url('adp') ?>">Total Allocation</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('expbyagency') ?>">ADP Allocation/Expenditure</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">GoB vs. IDA</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Quarterly Allocation vs Expenditure</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Expenditure to Date</a>
	    	                    </li>
	    	                </ul>
	    	                <!-- /.nav-second-level -->
	    	            </li>
	    	            <li>
	    	                <a href="#"><i class="fa fa-book fa-fw"></i> Data Collection<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level <?= ( $uri_string == 'imed' || $uri_string == 'imed_02' || $uri_string == 'imed_03' || $uri_string == 'imed_04' ) ? "collapse in":'' ?>" <? ( $uri_string == 'imed' || $uri_string == 'imed_02' || $uri_string == 'imed_03' || $uri_string == 'imed_04' ) ? 'area-expanded="true"':'' ?>>
	    	                    <li>
	    	                        <a href="<?= base_url('imed') ?>" <?= ( $uri_string == 'imed_02' || $uri_string == 'imed_03' || $uri_string == 'imed_04' ) ? "class=active":'' ?> >IMED</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('data_collection_for_works_contracts') ?>">Works Contracts</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('data_collection_for_goods_contracts') ?>">Goods Contracts</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('data_collection_for_consultancy_services_contracts') ?>" >Service Contracts</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('check_list_for_equipments') ?>">Check list for Equipment's</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('check_list_for_structures') ?>">Check list for Structures</a>
	    	                    </li>
	    	                </ul>
	    	            </li>
	    	            <li>
	    	                <a href="<?= base_url('#') ?>"><i class="fa fa-file-text-o fa-fw"></i> Reports<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level">
	    	                    <li>
	    	                        <a href="<?= base_url('#') ?>">Result Framework<span class="fa arrow"></span></a>
	    	                        <ul class="nav nav-third-level">
	    	                            <li>
	    	                                <a href="<?= base_url('#') ?>">Updated<span class="fa arrow"></span></a>
	    	                                <ul class="nav nav-fourth-level">
	    	                                    <li>
	    	                                        <a href="<?= '#'//base_url('pdoi') ?>">Project Development Objective Indicators</a>
	    	                                    </li>
	    	                                    <li>
	    	                                        <a href="<?= '#'//base_url('iri') ?>">Intermediate Results Indicators</a>
	    	                                    </li>
	    	                                </ul>
	    	                            </li>
	    	                        </ul>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('mem') ?>">M&E Matrix</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('progress') ?>">KAA Progress Tracking</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('#') ?>">Quarterly Progress</a>
	    	                    </li>
	    	                    <!-- <li>
	    	                        <a href="<?= base_url('pdo') ?>">Consolidate Project Development Object (PDO)</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('wrf') ?>">WB’s Results Framework</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('progress_urp') ?>">Progress of URP</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('#') ?>">Financial Expenditure</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('sc_kaa') ?>">Summary of completion progress of all sub-activity of KAAs</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="<?= base_url('#') ?>">Expenditure by Agencies<span class="fa arrow"></span></a>
	    	                        <ul class="nav nav-third-level">
	    	                            <li>
	    	                                <a href="<?= base_url('expbyagency') ?>">ADP FY 2017-18</a>
	    	                            </li>
	    	                        </ul>
	    	                    </li> -->
	    	                </ul>
	    	                <!-- /.nav-second-level -->
	    	            </li>
	    	            <li>
	    	                <a href="<?= base_url('#') ?>"><i class="fa fa-wrench fa-fw"></i> Configuration<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level">
	    	                	<li>
	    	                        <a href="#">System Configuration</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Users</a>
	    	                    </li>
	    	                    <li>
	    	                        <a href="#">Approvers</a>
	    	                    </li>
	    	                </ul>	
	    	            </li>
	    	            <li>
	    	                <a href="<?= base_url('#') ?>"><i class="fa fa-question-circle fa-fw"></i> Help<span class="fa arrow"></span></a>
	    	                <ul class="nav nav-second-level">
	    	                	<li>
	    	                        <a href="#">User Guide</a>
	    	                    </li>
	    	                </ul>
	    	            </li>
	    	        </ul>
	    	    </div>
	    	    <!-- /.sidebar-collapse -->
	    	</div>
	    	<!-- /.navbar-static-side -->
	    </nav>

	    <div id="page-wrapper">

	        <?= $output ?>

	    </div>
	    <!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->


	<!-- jQuery -->
	<script src="<?= asset('vendor/jquery/jquery.min.js') ?>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<?= asset('vendor/bootstrap/js/bootstrap.min.js') ?>"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<?= asset('vendor/metisMenu/metisMenu.min.js') ?>"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<?= asset('dist/js/sb-admin-2.js') ?>"></script>

	<?php
		foreach($js as $file){
				echo "\n\t\t";
				?><script src="<?php echo $file; ?>"></script><?php
		} echo "\n\t";
	?>
</body>
</html>
	

    