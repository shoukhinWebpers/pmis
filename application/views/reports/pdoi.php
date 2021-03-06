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
                            <?php 
                            $year       = get_years( $data );
                            $total_year = count( $year ); 
                            ?>
                            <thead>
                                <tr>
                                    <th rowspan="2">Indicator Name</th>
                                    <th rowspan="2">Unit of Measure</th>
                                    <th rowspan="2">&nbsp;</th>
                                    <th rowspan="2">Baseline</th>
                                    <th colspan="<?= $total_year ?>" style="text-align: center">Cumulative Target Values</th>
                                    <th rowspan="2">Frequency</th>
                                    <th rowspan="2">Data Source/Methodology</th>
                                    <th rowspan="2">Responsible for data collection</th>
                                    <th rowspan="2">Comments</th>
                                </tr>
                                <tr>
                                    <?php
                                    for ( $i = 0; $i < $total_year; $i++ ) {
                                    ?>
                                    <th>YR<?= $i + 1 ?> ( <?= $year[$i] ?> )</th>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $indicator_name = array();
                                $remember_founding_place_for_pad_target = -1;
                                $remember_founding_place_for_actual_acheived = -1;
                                $total_data = count( $data );

                                for ( $i = 0; $i < $total_data; $i++ ) {
                                    if( !in_array( $data[$i]['ind_id'], $indicator_name ) ){
                                        $indicator_name[] = $data[$i]['ind_id'];
                                ?>
                                <tr>
                                    <td rowspan="2">
                                        <?= $data[$i]['indicator_name'] ?>
                                    </td>
                                    <td rowspan="2"><?= $data[$i]['unit_of_measure'] ?></td>
                                    <td>PAD Targets</td>
                                    <td><?= $data[$i]['baseline'] ?></td>
                                    <?php
                                    $found = false;
                                    for ( $pt = 0; $pt < $total_year; $pt++ ) {
                                        for ( $j = $remember_founding_place_for_pad_target+1; $j < $total_data; $j++ ) {
                                            if( $data[$j]['year'] == $year[$pt] && end( $indicator_name ) == $data[$j]['ind_id'] ) {
                                    ?>
                                    <td><?= $data[$j]['pad_target'] ?></td>
                                    <?php
                                                $found = true;
                                                $remember_founding_place_for_pad_target = $j;
                                                break;
                                            }else{
                                                $found = false;
                                            }
                                        }
                                        if( ($remember_founding_place_for_pad_target + 1) >= $total_data && $found == true ){

                                            $found = false;

                                        }else if( !$found ){
                                    ?>
                                    <td>0</td>
                                    <?php
                                        }
                                    }
                                    ?>
                                    <td rowspan="2"><?= $data[$i]['frequency'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['data_source_methodology'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['responsibilities_for_data_collection'] ?></td>
                                    <td rowspan="2"><?= $data[$i]['comments'] ?></td>
                                </tr>
                                <tr>
                                    <td>Actual Achieved</td>
                                    <td><?= $data[$i]['baseline'] ?></td>
                                    <?php
                                    $found = false;
                                    for ( $pt = 0; $pt < $total_year; $pt++ ) {
                                        for ( $j = $remember_founding_place_for_actual_acheived+1; $j < $total_data; $j++ ) {
                                            if( $data[$j]['year'] == $year[$pt] && end( $indicator_name ) == $data[$j]['ind_id'] ) {
                                    ?>
                                    <td><?= $data[$j]['actual_acheived'] ?></td>
                                    <?php
                                                $found = true;
                                                $remember_founding_place_for_actual_acheived = $j;
                                                break;
                                            }else{
                                                $found = false;
                                            }
                                        }
                                        if( ( $remember_founding_place_for_actual_acheived + 1 ) >= $total_data && $found == true ){

                                            $found = false;

                                        }else if( !$found ){
                                    ?>
                                    <td>0</td>
                                    <?php
                                        }
                                    }
                                    ?>
                                </tr>
                                <?php
                                    }//End first indicator check if 
                                }//End of first for loop
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