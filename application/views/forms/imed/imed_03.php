<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Project Monitoring Form: IMED 03/<?= date('Y') ?> (Quarterly Progress Report)</h2>
        <h4>ADP: <?= date('Y-m-d') ?>, Reporting Quarter: <?= ( date('m')%3 == 0 ) ? str_pad( date('m')/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( (date('m')/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></h4>
    </div>
    <!-- /.col-lg-12 -->
</div>
<?= form_open( 'imed_04', 'role="form" method="post"' ); ?>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    C. Implementation Problems and Suggested Measures (Page - 03)
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-1 col-lg-offset-8">
                            <h4>Code</h4>
                        </div>
                        <div class="col-lg-2">
                            <div class="row row-bordered" style="height: 38px;">
                                <div class="col-lg-6"></div>
                                <div class="col-lg-6"></div>
                            </div>
                        </div>
                    </div>
                    <!-- C1 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>C.1 Project Title: <?= $project_title ?></h4>
                        </div>
                    </div><!-- C1 End -->
                    <!-- C2 header Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>C.2 Implementation Problems:</h4>
                        </div>
                    </div><!-- C2 header End -->
                    <!-- C2 Start -->
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 13px;">Problem Number 01</p>   
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Problem Type</label>
                                <?= form_dropdown('problem_type_id', $problem_types, '', 'id="list_of_problem_types" class="form-control"'); ?>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Description of Problem</label>
                                <textarea name="desc_of_problem" class="form-control" placeholder="Description of problem write here..." rows="4"></textarea>
                            </div>
                        </div>
                    </div><!-- C2 End -->
                    <!-- Add More C2 start -->
                    <div class="row">
                        <div class="col-lg-4 btn-column">
                            <a class="btn btn-block btn-outline btn-primary">Add More Implementation Problem <span class="fa fa-plus-circle"></span></a>
                        </div>  
                    </div><!-- Add More C2 End -->
                    <hr>
                    <!-- C3 header Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>C.3 Suggested Measures: (In brief and specific)</h4>
                        </div>
                    </div><!-- C3 header End -->
                    <!-- C3 Start -->
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 13px;">Problem Number 01</p>   
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Measures Suggested</label>
                                <textarea name="suggested_measures" class="form-control" rows="4"></textarea>
                            </div>
                        </div>
                    </div><!-- C3 End -->
                    <!-- Add More C3 start -->
                    <div class="row">
                        <div class="col-lg-4 btn-column">
                            <a class="btn btn-block btn-outline btn-success">Add More Suggested Measure <span class="fa fa-plus-circle"></span></a>
                        </div>  
                    </div><!-- Add More C3 End -->
                    <hr>
                    <!-- C4 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>C.4 Is the project declared completed</h4>
                        </div>
                        <div class="col-lg-1">
                            <div class="form-group">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="project_declaration" id="optionsRadios1" value="1"><b>Yes</b>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="form-group">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="project_declaration" id="optionsRadios1" value="2"><b>No</b>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div><!-- C4 End -->
                    <div class="row">
                        <div class="col-lg-4 btn-column">
                            <a href="#" class="btn btn-block btn-success">Back <span class="fa fa-arrow-circle-o-left"></span></a>
                        </div>
                        <div class="col-lg-4 btn-column">
                            <button type="submit" class="btn btn-block btn-primary">Save & Continue <span class="fa fa-save"></span></button>
                        </div>
                        <div class="col-lg-4 btn-column">
                            <a class="btn btn-block btn-danger">Cancel <span class="fa fa-times-circle"></span></a>
                        </div>  
                    </div>
                </div><!-- /.panel-body -->
            </div><!-- /.panel -->
        </div><!-- /.col-lg-12 -->
    </div><!-- /.row -->
<?= form_close(); ?>