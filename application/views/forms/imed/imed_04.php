<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Project Monitoring Form: IMED 03/<?= date('Y') ?> (Quarterly Progress Report)</h2>
        <h4>ADP: <?= date('Y-m-d') ?>, Reporting Quarter: <?= ( date('m')%3 == 0 ) ? str_pad( date('m')/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( (date('m')/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></h4>
    </div>
    <!-- /.col-lg-12 -->
</div>
<?= form_open( 'imed_submit', 'role="form" method="post"' ); ?>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    D. Contract Implementation Report (Page - 04)
                    <p><i>(Please fill-in this form for goods and works contract of value above Tk. 200.00 lakh and consultancy contract of value above Tk. 100.00 lakh)</i></p>
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
                    <!-- D1 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>D.1 Project Title: <?= $project_title ?></h4>
                        </div>
                    </div><!-- D1 End -->
                    <!-- D2 header Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>D.2 Contract Implementation:</h4>
                        </div>
                    </div><!-- D2 header End -->
                    <!-- D2 Start -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Description of contracts (as per tender document)</label>
                                    </div>  
                                </div>
                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <input name="desc_of_contracts" class="form-control">
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Contract value</label>
                                    </div>  
                                </div>
                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <input name="contract_value" class="form-control">
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Date of work order/contract agreement</label>
                                    </div>  
                                </div>
                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <input name="date_of_work_order" class="form-control">
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Completion date as per contract</label>
                                    </div>  
                                </div>
                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <input name="completion_date_as_per_contract" class="form-control">
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Progress (Amount paid)</label>
                                    </div>  
                                </div>
                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <input name="amount_paid" class="form-control" placeholder="Amount in Lakh Taka">
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Progress ( Physical [%] )</label>
                                    </div>  
                                </div>
                                <div class="col-lg-7">
                                    <div class="form-group">
                                        <input name="physical" class="form-control" placeholder="Amount in Lakh Taka">
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div><!-- D2 End -->
                    <!-- Add More D2 start -->
                    <div class="row">
                        <div class="col-lg-4 btn-column">
                            <a class="btn btn-block btn-outline btn-success">Add More Contract Implementation <span class="fa fa-plus-circle"></span></a>
                        </div>  
                    </div><!-- Add More D2 End -->
                    <hr>
                    <!-- D3 header Start -->
                    <div class="row">
                        <div class="col-lg-7">
                            <h4>D.3 Problems/Reasons for Delay in Contract Implementation (if any):</h4>
                        </div>
                    </div><!-- D3 header End -->
                    <!-- D3 Start -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label><span style="font-weight: bold;">1.</span> Description</label>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <textarea name="delaying_description" class="form-control" rows="4"></textarea>
                            </div>
                        </div>
                    </div><!-- D3 End -->
                    <!-- Add More D3 start -->
                    <div class="row">
                        <div class="col-lg-4 btn-column">
                            <a class="btn btn-block btn-outline btn-primary">Add More Description <span class="fa fa-plus-circle"></span></a>
                        </div>  
                    </div><!-- Add More D3 End -->
                    <hr>
                    <div class="row">
                        <div class="col-lg-4 btn-column">
                            <a href="#" class="btn btn-block btn-success">Back <span class="fa fa-arrow-circle-o-left"></span></a>
                        </div>
                        <div class="col-lg-4 btn-column">
                            <button type="Submit"class="btn btn-block btn-primary">Submit <span class="fa fa-check-circle"></span></button>
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