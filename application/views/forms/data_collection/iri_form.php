<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Intermediate Results Framework</h2>
    </div>
</div>

<?= form_open('iri_form_submit', 'role="form" method="post"'); ?>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row" >
                <div class="col-lg-12" >
                    <div class="form-group">
                        <label for="contractPackageNumber">Select a Component</label>
                        <?= form_dropdown( 'cmp_id', $component, '','id="component" class="form-control"' ); ?>
                    </div>
                </div>
            </div>
            <div class="row" >
                <div class="col-lg-12" >
                    <div class="form-group">
                        <label id="indicator_label" for="contractPackageNumber">Select an Indicator</label>
                        <select id="indicator_selection" class="form-control">
                            <option value="">Please select a component first</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row" >
                <div class="col-lg-12" >
                    <div class="form-group">
                        <label for="contractPackageNumber">Select a Unit of Measure</label>
                        <?= form_dropdown( 'measure_id', $unit_of_measure, '','id="measure" class="form-control"' ); ?>
                    </div>
                </div>
            </div>      
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            Project Development Objective Indicators
        </div>
        <div class="panel-body">
            <div class="row" >
                <div class="col-lg-12">
                    <div class="form-group">
                        <label for="fiscal_year">Select a Fiscal Year</label>
                        <?php    
                            $year_up_to      = date('Y');
                            $fiscal_year[''] = "Select a fiscal year";

                            for( $i = $year_up_to; $i >= 2014; $i-- ){
                                $fiscal_year[$i] = $i;
                            }
                        ?>
                        <?= form_dropdown( 'year', $fiscal_year, '','id="fiscal_year" class="form-control"' ); ?>
                    </div>  
                </div>
            </div>

            <div class="row">
                
                <div class="col-lg-12">
                    <div class="form-group">
                        <label>PAD Target</label>
                        <input name="pad_target" class="form-control" placeholder="PAD Target">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label>Actual Achieved</label>
                        <input name="actual_acheived" class="form-control" placeholder="Actual Achieved">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label>Comments</label>
                        <textarea class="form-control" name="comments" rows="4"></textarea>
                    </div>
                </div>

            </div>
            <a href="#" class="btn btn-info" style="margin-left: 12px;"> Add More Fiscal Year &nbsp; <span class="fa fa-plus-circle"></span></a>
        </div>
    </div>

    <button type="submit" class="btn btn-success">Submit</button>
    <a style="margin-left: 100px;" href="#" class="btn btn-danger">Cancel</a>
<?= form_close(); ?>