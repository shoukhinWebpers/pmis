<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Project Monitoring Form: IMED 03/<?= date('Y') ?> (Quarterly Progress Report)</h2>
        <h4>ADP: <?= date('Y-m-d') ?>, Reporting Quarter: <?= ( date('m')%3 == 0 ) ? str_pad( date('m')/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( (date('m')/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></h4>
    </div>
</div>

<?= form_open( 'imed_02', 'role="form" method="post"' ); ?>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    A. Quarterly Financial Progress Report
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

                    <!-- A1 Start -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h4>A.1</h4>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>a) Project Title</label>
                                <input name="project_title" class="form-control" placeholder="Please provide the project title">
                            </div>
                            <div class="form-group">
                                <label>b) Ministry</label>
                               	<?= form_dropdown('ministry', $list_of_ministry, '','id="list_of_ministry" class="form-control"'); ?>
                            </div>
                            <div class="form-group">
                                <label id="sibling_list_of_division">c) Division</label>
                                <select id="list_of_division" class="form-control">
                                	<option value="">Please select a ministry first</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>d) Agency</label>
                                <?= form_dropdown('agency', $list_of_agency, '','class="form-control"'); ?>
                            </div>
                        </div>
                    </div><!-- A1 End -->

                    <!-- A2 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <h4>A.2 Quarterly Financial Progress</h4>
                        </div>
                    </div>
                    <!-- A2 Table 1 Start -->
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Release for the Quarter (GoB)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="revenue_rtq_gob" class="form-control" placeholder="Revenue">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="capital_rtq_gob" class="form-control" placeholder="Capital">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="grand_total_rtq_gob" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Release for the Quarter (RPA)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="revenue_rtq_rpa" class="form-control" placeholder="Revenue">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="capital_rtq_rpa" class="form-control" placeholder="Capital">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="grand_total_rtq_rpa" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Expenditure for the Quarter (GoB)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="exp_for_the_qrtr_revenue_gob" class="form-control" placeholder="Revenue">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="exp_for_the_qrtr_capital_gob" class="form-control" placeholder="Capital">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="exp_for_the_qrtr_grand_total_gob" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Expenditure for the Quarter (RPA)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="exp_for_the_qrtr_revenue_rpa" class="form-control" placeholder="Revenue">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="exp_for_the_qrtr_capital_rpa" class="form-control" placeholder="Capital">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="exp_for_the_qrtr_grand_total_rpa" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Expenditure for the Quarter (DPA)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="exp_for_the_qrtr_revenue_dpa" class="form-control" placeholder="Revenue">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="exp_for_the_qrtr_capital_dpa" class="form-control" placeholder="Capital">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="exp_for_the_qrtr_grand_total_dpa" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Current Year's Expenditure (GoB)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="crrnt_year_exp_revenue_gob" class="form-control" placeholder="Revenue (Amount in Lakh Taka)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="crrnt_year_exp_capital_gob" class="form-control" placeholder="Capital (Amount in Lakh Taka)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="crrnt_year_exp_grand_total_gob" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Current Year's Expenditure (RPA)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="crrnt_year_exp_revenue_rpa" class="form-control" placeholder="Revenue (Amount in Lakh Taka)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="crrnt_year_exp_capital_rpa" class="form-control" placeholder="Capital (Amount in Lakh Taka)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="crrnt_year_exp_grand_total_rpa" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Current Year's Expenditure (DPA)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Revenue</label>
                                        <input name="crrnt_year_exp_revenue_dpa" class="form-control" placeholder="Revenue (Amount in Lakh Taka)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Capital</label>
                                        <input name="crrnt_year_exp_capital_dpa" class="form-control" placeholder="Capital (Amount in Lakh Taka)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Grand Total</label>
                                        <input name="crrnt_year_exp_grand_total_dpa" class="form-control" disabled="disabled">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- A2 Table 1 End -->
                    <!-- A2 Table 2 Start -->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Cash Foreign Exchange Spent</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input name="cash_foreign_exchange_spent" class="form-control" placeholder="Cash foreign exchange spent">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">Spent from Own Resources</p>  
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <label>Cash</label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <input name="spent_from_own_resources_cash" class="form-control" placeholder="Cash">
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <label>Kind</label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <input name="spent_from_own_resources_kind" class="form-control" placeholder="Kind">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">CD/VAT</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input name="cd_vat" class="form-control" placeholder="CD/VAT">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- A2 Table 2 End -->
                    <!-- A2 Table 3 Start -->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">RPA Spent (Cumulative to Date)</p>  
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input name="rpa_spent_cumulative_to_date" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">RPA Claimed</p>  
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Reporting Quarter</label>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <input name="rpa_claimed_reporting_quarter" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Cumulative to Date</label>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <input name="rpa_claimed_cumulative_to_date" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p style="font-weight: bold; font-size: 20px;">RPA Reimbursed</p>  
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Reporting Quarter</label>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <input name="rpa_reimbursed_reporting_quarter" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Cumulative to Date</label>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <input name="rpa_reimbursed_cumulative_to_date" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- A2 Table 3 End -->
                    <!-- A2 End -->
                    <div class="row">
                        <div class="col-lg-6 btn-column">
                            <button type="submit" class="btn btn-block btn-primary">Save & Continue <span class="fa fa-save"></span></button>
                        </div>
                        <div class="col-lg-6 btn-column">
                            <a class="btn btn-block btn-danger">Cancel <span class="fa fa-times-circle"></span></a>
                        </div>  
                    </div>
                </div><!-- /.panel-body -->
            </div><!-- /.panel -->
        </div><!-- /.col-lg-12 -->
    </div><!-- /.row -->
<?= form_close(); ?>