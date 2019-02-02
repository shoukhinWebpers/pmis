<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Monitoring and Evaluation Matrix</h2>
    </div>
</div>

<?= form_open('m_and_e_submit', 'role="form" method="post"'); ?>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="contractPackageNumber">Select a Component</label>
                <?= form_dropdown( 'component_id', $component, '','id="component" class="form-control related-to-component"' ); ?>
            </div>
            <div class="form-group">
                <label id="sibling_sub_component" for="contractDescription">Select a Sub Component</label>
                <select id="sub_component" class="form-control related-to-component">
                    <option value="">Please select a component first</option>
                </select>
            </div>
            <div class="form-group">
                <label id="sibling_output" for="contractDescription">Select an Output</label>
                <select id="output" class="form-control related-to-component">
                    <option value="">Please select a sub component first</option>
                </select>
            </div>
            <div class="form-group">
                <label id="sibling_iris" for="contractDescription">Select an IRIs</label>
                <select id="iris" class="form-control related-to-component">
                    <option value="">Please select an output first</option>
                </select>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            Cumulative progress Achieved toward Indicator Targets
        </div>
        <div class="panel-body">
            <h3>Physical Progress</h3>
            <div class="form-group">
                <label for="fiscal_year">Select a Fiscal Year</label>
                <?php    
                    $year_up_to      = date('Y');
                    $fiscal_year[''] = "Select a fiscal year";

                    for( $i = $year_up_to; $i >= 1990; $i-- ){
                        $fiscal_year[$i] = $i;
                    }
                ?>
                <?= form_dropdown( 'year', $fiscal_year, '','id="fiscal_year" class="form-control"' ); ?>
            </div>

            <div class="row">
                
                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q1</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="q1_physical_progress_target" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="q1_physical_progress_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q2</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="q2_physical_progress_target" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="q2_physical_progress_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q3</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="q3_physical_progress_target" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="q3_physical_progress_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q4</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="q4_physical_progress_target" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="q4_physical_progress_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <h3>Financial Progress</h3>

            <div class="row">
                
                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q1</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="fn_progress_q1_planned" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="fn_progress_q1_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q2</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="fn_progress_q2_planned" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="fn_progress_q2_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q3</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="fn_progress_q3_planned" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="fn_progress_q3_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Q4</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Target</label>
                                <input name="fn_progress_q4_planned" class="form-control" placeholder="Target">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Actual</label>
                                <input name="fn_progress_q4_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <a href="#" class="btn btn-info" style="margin-left: 12px;"> Add More Fiscal Year &nbsp; <span class="fa fa-plus-circle"></span></a>

        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            Completion Dates
        </div>
        <div class="panel-body">
            <div class="row">                
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Planned</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input name="completion_date_planned" class="form-control" placeholder="Planned">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Actual</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input name="completion_date_actual" class="form-control" placeholder="Actual">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: bold; font-size: 20px;">Time Overdue</p>  
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input name="completion_date_time_overdue" class="form-control" placeholder="Time Overdue">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <button type="submit" class="btn btn-success">Submit</button>
<?= form_close(); ?>