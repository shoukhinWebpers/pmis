<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Goods Contract</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <!-- The aproved cost of Urban Resilience Project Start -->
    <div class="col-lg-12">
        <!-- /.panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-money fa-fw"></i>&nbsp;Procurement plan for Goods contract
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12 table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th rowspan="2">SI. No. </th>
                                    <th rowspan="2">Contract Package Number</th>
                                    <th rowspan="2">Contract Description</th>
                                    <th rowspan="2">Unit</th>
                                    <th rowspan="2">Qty/Nos.</th>
                                    <th rowspan="2">Estimated Contract amount (In Lakh Tk)</th>
                                    <th rowspan="2">Actual Contract amount (In Lakh Tk)</th>
                                    <th rowspan="2">Procedure/Method</th>
                                    <th rowspan="2">Procurement Guideline (PPA/BG)</th>
                                    <th rowspan="2">Prior Review (Yes/No)</th>
                                    <th colspan="2">Date of Bid opening</th>
                                    <th colspan="2">Date of Contract signing</th>
                                    <th colspan="2">Date of Delivery</th>
                                    <th colspan="2">Expenditure (Tk. In Lac) up to <?= date( "F, Y", strtotime($data->exp_date) ) ?></th>
                                    <th rowspan="2">Name of Supplier</th>
                                    <th rowspan="2">Progress of procurement (%) as of <?= date( "F, y", strtotime($data->prgrss_date) ) ?></th>
                                    <th rowspan="2">Remarks</th>
                                </tr>
                                <tr>
                                    <th>Planned date</th>
                                    <th>Actual date</th>
                                    <th>Planned date</th>
                                    <th>Actual date</th>
                                    <th>Planned date</th>
                                    <th>Actual date</th>
                                    <th>Contractor</th>
                                    <th>VAT/TAX</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $counter = 1; ?>
                                <?php //foreach ( $data as $key => $value ) { ?>
                                <tr>
                                    <td><?= $counter ?></td>
                                    <td><?= $data->contract_package_number ?></td>
                                    <td><?= $data->contract_description ?></td>
                                    <td><?= $data->unit ?></td>
                                    <td><?= $data->qty_nos ?></td>
                                    <td><?= $data->estimated_price ?></td>
                                    <td><?= $data->actual_contract_amount ?></td>
                                    <td><?= $data->procedure_method ?></td>
                                    <td><?= $data->procurement_guideline ?></td>
                                    <td><?= $data->prior_review ?></td>
                                    <td><?= $data->date_of_bid_opening_planned_date ?></td>
                                    <td><?= $data->date_of_bid_opening_actual_date ?></td>
                                    <td><?= $data->date_of_contract_signing_planned_date ?></td>
                                    <td><?= $data->date_of_contract_signing_actual_date ?></td>
                                    <td><?= $data->date_of_delivery_planned_date ?></td>
                                    <td><?= $data->date_of_delivery_actual_date ?></td>
                                    <td><?= $data->expenditure_contractor ?></td>
                                    <td><?= $data->expenditure_vat_tax ?></td>
                                    <td><?= $data->name_of_supplier ?></td>
                                    <td><?= $data->progress_of_procurement ?></td>
                                    <td><?= $data->remarks ?></td>
                                </tr>
                                <?php
                                /*$counter++;
                                }*/ 
                                ?>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.col-lg-4 (nested) -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- The aproved cost of Urban Resilience Project End -->
</div>