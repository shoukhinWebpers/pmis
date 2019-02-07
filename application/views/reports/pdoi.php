<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Results Framework</h1>
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
                <i class="fa fa-money fa-fw"></i>&nbsp;Project Development Objectives Indicators
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12 table-responsive">
                        <table id="bootstrap-data-table" class="table table-bordered">
                            <?php $year = get_years( $data ); ?>
                            <thead>
                                <tr>
                                    <th rowspan="2">Indicator Name</th>
                                    <th rowspan="2">Unit of Measure</th>
                                    <th rowspan="2">&nbsp;</th>
                                    <th rowspan="2">Baseline</th>
                                    <th colspan="<?= count( $year ) ?>" style="text-align: center">Cumulative Target Values</th>
                                    <th rowspan="2">Frequency</th>
                                    <th rowspan="2">Data Source/Methodology</th>
                                    <th rowspan="2">Responsible for data collection</th>
                                    <th rowspan="2">Comments</th>
                                </tr>
                                <tr>
                                    <?php
                                    for ( $i = 0; $i < count( $year ); $i++ ) {
                                    ?>
                                    <th>YR<?= $i + 1 ?> ( <?= $year[$i] ?> )</th>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php for ( $i = 0; $i < count( $data ); $i++ ) { ?>
                                <tr>
                                    <td rowspan="2">
                                        <?= $data[$i]['indicator_name'] ?>
                                    </td>
                                    <td rowspan="2"><?= $data[$i]['unit_of_measure'] ?></td>
                                    <td>PAD Targets</td>
                                    <td><?= $data[$i]['baseline'] ?></td>
                                    <td><?= $data[$i]['pad_target'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['frequency'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['data_source_methodology'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['responsibilities_for_data_collection'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['comments'] ?></td>
                                </tr>
                                <tr>
                                    <td>Actual Achieved</td>
                                    <td><?= $data[$i]['baseline'] ?></td>
                                    <td><?= $data[$i]['actual_acheived'] ?></td>
                                </tr>
                                <?php } ?>
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