<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Project Monitoring Form: IMED 03/<?= date('Y') ?> (Quarterly Progress Report)</h2>
        <h4>ADP: <?= date('Y-m-d') ?>, Reporting Quarter: <?= ( date('m')%3 == 0 ) ? str_pad( date('m')/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( (date('m')/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></h4>
    </div>
    <!-- /.col-lg-12 -->
</div>
<?= form_open( 'imed_03', 'role="form" method="post"' ); ?>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    B. Quarterly Component-wise Progress (Page - 02)
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
                    <!-- B1 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>B.1 Project Title: <?= $project_title ?></h4>
                        </div>
                    </div><!-- B1 End -->
                    <!-- B2 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>B.2 Quarterly Component-wise Progress:</h4>
                        </div>
                    </div>
                    <!-- B2 Start -->
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 15px;">SI. No: 01</p>
                        </div>
                        <div class="col-lg-7">
                            <div class="form-group">
                                <label class="name-of-component">Name of the Component (As per Table E-1 of PP) or (As per Part E (32) of TAPP)</label>
                                <input name="name_of_the_component" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="form-group">
                                <label>Unit</label>
                                <input name="unit" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 13px;">Cumulative Progress Upto Last June</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (Qtty)</label>
                                        <input name="cmltv_progress_upto_qtty" class="form-control" placeholder="Physical (Qtty)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (%)</label>
                                        <input name="cmltv_progress_upto_prcntg" class="form-control" placeholder="Physical (%)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Financial</label>
                                        <input name="cmltv_progress_upto_finance" class="form-control" placeholder="Financial">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 13px;">Yearly Target</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (Qtty)</label>
                                        <input name="yearly_target_qtty" class="form-control" placeholder="Physical (Qtty)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (%)</label>
                                        <input name="yearly_target_prcntg" class="form-control" placeholder="Physical (%)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Financial</label>
                                        <input name="yearly_target_finance" class="form-control" placeholder="Financial">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 13px;">Progress in Current Quarter</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (Qtty)</label>
                                        <input name="prgrs_in_crnt_qrtr_qtty" class="form-control" placeholder="Physical (Qtty)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (%)</label>
                                        <input name="prgrs_in_crnt_qrtr_prcntg" class="form-control" placeholder="Physical (%)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Financial</label>
                                        <input name="prgrs_in_crnt_qrtr_financial" class="form-control" placeholder="Financial">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 13px;">Current Year's Progress</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (Qtty)</label>
                                        <input name="crnt_yrs_prgrs_qtty" class="form-control" placeholder="Physical (Qtty)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Physical (%)</label>
                                        <input name="crnt_yrs_prgrs_prcntg" class="form-control" placeholder="Physical (%)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Financial</label>
                                        <input name="crnt_yrs_prgrs_financial" class="form-control" placeholder="Financial">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Remarks</label>
                                <input name="remarks" class="form-control" placeholder="Remarks">
                            </div>
                        </div>
                    </div><!-- B2 End -->
                    <!-- Financial Total Start -->
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label>Financial Total (Cumulative Progress Upto Last June)</label>
                                <input class="form-control" disabled="disabled">
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label class="margin-adjust-financial-total-yearly-target">Financial Total (Yearly Target)</label>
                                <input class="form-control" disabled="disabled">
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label class="margin-adjust-financial-total-pcq">Financial Total (Progress in Current Quarter)</label>
                                <input class="form-control" disabled="disabled">
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label class="margin-adjust-financial-total-cyp">Financial Total (Current Year's Progress)</label>
                                <input class="form-control" disabled="disabled">
                            </div>
                        </div>
                    </div>
                    <!-- Financial Total End -->
                    <div class="row">
                        <div class="col-lg-3 btn-column">
                            <a href="<?= base_url('imed/'.$crnt_imed_working_id) ?>" class="btn btn-block btn-success">Back <span class="fa fa-arrow-circle-o-left"></span></a>
                        </div>
                        <div class="col-lg-3 btn-column">
                            <button type="submit" class="btn btn-block btn-warning">Add More <span class="fa fa-plus-circle"></span></button>
                        </div>
                        <div class="col-lg-3 btn-column">
                            <button type="submit" class="btn btn-block btn-primary">Save & Continue <span class="fa fa-save"></span></button>
                        </div>
                        <div class="col-lg-3 btn-column">
                            <a class="btn btn-block btn-danger">Cancel <span class="fa fa-times-circle"></span></a>
                        </div>  
                    </div>
                </div><!-- /.panel-body -->
            </div><!-- /.panel -->
        </div><!-- /.col-lg-12 -->
    </div><!-- /.row -->
<?= form_close(); ?>