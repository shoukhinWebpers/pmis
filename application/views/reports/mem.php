<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Monitoring and Evaluation Matrix</h1>
    </div>
</div>

<!-- /.row -->
<div class="row">
    <!-- The aproved cost of Urban Resilience Project Start -->
    <div class="col-lg-12">
        <!-- /.panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-money fa-fw"></i>&nbsp;Monitoring and Evaluation Matrix
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12 table-responsive">
                        <select class="form-control" name="component" style="width: 147px; margin-bottom: 10px;">
                            <option value="">Select Component</option>
                            <option value="A">Component A</option>
                            <option value="B">Component B</option>
                            <option value="C">Component C</option>
                        </select>
                        <table id="bootstrap-data-table" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th rowspan="3">
                                        URP Component and IA
                                    </th>
                                    <th rowspan="3">Activities by Sub-Component</th>
                                    <th rowspan="3">Out-puts</th>
                                    <th rowspan="3">IRIs</th>
                                    <th rowspan="3">Baseline</th>
                                    <th rowspan="3">Unit of Measure</th>
                                    <?php $number_of_year = count($data)  ?>
                                    <th colspan="<?= 5*$number_of_year ?>" style="text-align: center;">Cumulative Physical progress Achieved toward Indicator Targets</th>
                                    <th rowspan="3" colspan="2">Completion Dates</th>
                                    <th colspan="<?= (5*$number_of_year)+1 ?>" style="text-align: center;">Cumulative Financial Progress</th>
                                    <th colspan="3" style="text-align: center;">Physical Progress vs. Actual Expenditures (as % of Planned)</th>
                                </tr>
                                <tr>
                                    <?php
                                    $year = get_years($data);
                                    for ($i = 0; $i<count($year); $i++) {
                                    ?>
                                    <th colspan="5" style="text-align: center;">FY <?= $year[$i] ?></th>
                                    <?php
                                    }
                                    ?>
                                    <th>Unit</th>
                                    <?php
                                    for ($i = 0; $i<count($year); $i++) {
                                    ?>
                                    <th colspan="5" style="text-align: center;">FY <?= $year[$i] ?></th>
                                    <?php
                                    }
                                    ?>
                                    <th rowspan="2">Physical Progress vs.</th>
                                    <th rowspan="2">Ex-pendi-tures</th>
                                    <th rowspan="2">Ratio</th>
                                </tr>
                                <tr>
                                    <?php
                                    for ($i = 0; $i<count($year); $i++) {
                                    ?>
                                    <th>Q1</th>
                                    <th>Q2</th>
                                    <th>Q3</th>
                                    <th>Q4</th>
                                    <th>Total</th>
                                    <?php
                                    }
                                    ?>
                                    <th>BDT</th>
                                    <?php
                                    for ($i = 0; $i<count($year); $i++) {
                                    ?>
                                    <th>Q1</th>
                                    <th>Q2</th>
                                    <th>Q3</th>
                                    <th>Q4</th>
                                    <th>Total</th>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php

                                $component_id = '';
                                $activity_id  = '';
                                $output_id    = '';
                                $iris_id      = '';

                                for ( $i = 0; $i < count($data); $i++ ) {
                                ?>
                                <tr component = "<?= $data[$i]['component_seq'] ?>">
                                    <?php
                                    if( $component_id != $data[$i]['component_id'] ){
                                        $component_id      = $data[$i]['component_id'];
                                        $similar_component = count_similar_component( $data, $component_id );
                                    ?>
                                    <td rowspan = "<?= 3*$similar_component ?>">
                                        Component <?= $data[$i]['component_seq'] ?>: <?= $data[$i]['component_description'] ?>
                                    </td>
                                    <?php
                                    }//End of If
                                    ?>
                                    <?php
                                    if( $component_id == $data[$i]['component_id'] && $activity_id != $data[$i]['activity_id'] ){
                                        $activity_id                = $data[$i]['activity_id'];
                                        $rowspan_for_this_activity = calculate_rowspan_for_this_activity( $data, $component_id, $activity_id );
                                    ?>
                                    <td rowspan="<?= $rowspan_for_this_activity ?>">
                                        <?= $data[$i]['activities_name'] ?>
                                    </td>
                                    <?php
                                    }//End of If
                                    ?>
                                    <?php
                                    if( $component_id == $data[$i]['component_id'] 
                                        && $activity_id == $data[$i]['activity_id'] 
                                        && $output_id != $data[$i]['output_id'] ){

                                        $output_id              = $data[$i]['output_id'];
                                        $iris_under_this_output = count_iris_under_this_output( $data, $component_id, $output_id );
                                    ?>
                                    <td rowspan="<?= 3*$iris_under_this_output ?>">
                                        <?= $data[$i]['output_name'] ?>
                                    </td>
                                    <?php
                                    }//End of If
                                    ?>
                                    <?php
                                    if( $component_id == $data[$i]['component_id'] 
                                        && $activity_id == $data[$i]['activity_id'] 
                                        && $output_id == $data[$i]['output_id'] 
                                        && $iris_id != $data[$i]['iris_id'] ){
                                        
                                        $iris_id = $data[$i]['iris_id'];
                                    ?>
                                    <td rowspan="3">
                                        <?= $data[$i]['iris'] ?>
                                    </td>
                                    <td rowspan="3">
                                        <?= ( is_null($data[$i]['baseline']) ) ? "N/A":$data[$i]['baseline'] ?>
                                    </td>

                                    <!-- Target Row start -->
                                    <td>Target</td>
                                    <?php

                                    $total_physical_progress         = 0;
                                    $total_physical_progress_storage = 0;

                                    for( $y=0; $y<count($year); $y++ ){

                                        $location = get_the_location_of_same_parameters_in_different_year( $data, $data[$i]['component_id'], $data[$i]['activity_id'], $data[$i]['output_id'], $data[$i]['iris_id'], $year[$y] );
                                    ?>

                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q1_physical_progress_target'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q2_physical_progress_target'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q3_physical_progress_target'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q4_physical_progress_target'] ?></td>
                                    <td>
                                        <?= ( is_null($location) ) ? 0: $total_physical_progress_storage = $data[$location]['q1_physical_progress_target'] + $data[$location]['q2_physical_progress_target'] + $data[$location]['q3_physical_progress_target'] + $data[$location]['q4_physical_progress_target'] ?>
                                    </td>
                                    <?php
                                    $total_physical_progress += $total_physical_progress_storage;
                                    }
                                    ?>
                                    <td>Planned</td>
                                    <td><?= $data[$i]['completion_date_planned'] ?></td>
                                    <td>Planned</td>
                                    <?php

                                    $total_expenditures         = 0;
                                    $total_expenditures_storage = 0;

                                    for( $y=0; $y<count($year); $y++ ){

                                        $location = get_the_location_of_same_parameters_in_different_year( $data, $data[$i]['component_id'], $data[$i]['activity_id'], $data[$i]['output_id'], $data[$i]['iris_id'], $year[$y] );
                                    ?>

                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q1_planned'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q2_planned'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q3_planned'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q4_planned'] ?></td>
                                    <td>
                                        <?= ( is_null( $location ) ) ? 0: $total_expenditures_storage = $data[$location]['fn_progress_q1_planned'] + $data[$location]['fn_progress_q2_planned'] + $data[$location]['fn_progress_q3_planned'] + $data[$location]['fn_progress_q4_planned'] ?>
                                    </td>
                                    <?php
                                    $total_expenditures += $total_expenditures_storage;
                                    }
                                    ?>
                                    <td><?= $total_physical_progress ?></td>
                                    <td><?= $total_expenditures ?></td>
                                    <td><?= number_format( ( $total_physical_progress/$total_expenditures )*100, 2 )  ?>%</td>
                                    <!-- Target Row End -->
                                </tr>

                                <!-- Actual row start -->
                                <tr component = "<?= $data[$i]['component_seq'] ?>">
                                    <td>Actual</td>
                                    <?php

                                    $total_actual_progress         = 0;
                                    $total_actual_progress_storage = 0;

                                    for( $y=0; $y<count($year); $y++ ){

                                        $location = get_the_location_of_same_parameters_in_different_year( $data, $data[$i]['component_id'], $data[$i]['activity_id'], $data[$i]['output_id'], $data[$i]['iris_id'], $year[$y] );
                                    ?>

                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q1_physical_progress_actual'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q2_physical_progress_actual'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q3_physical_progress_actual'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['q4_physical_progress_actual'] ?></td>
                                    <td>
                                        <?= ( is_null($location) ) ? 0: $total_actual_progress_storage = $data[$location]['q1_physical_progress_actual'] + $data[$location]['q2_physical_progress_actual'] + $data[$location]['q3_physical_progress_actual'] + $data[$location]['q4_physical_progress_actual'] ?>
                                    </td>
                                    <?php
                                    $total_actual_progress += $total_actual_progress_storage;
                                    }//End for
                                    ?>
                                    <td>Actual</td>
                                    <td><?= $data[$i]['completion_date_actual'] ?></td>
                                    <td>Actual</td>
                                    <?php

                                    $total_actual_expenditures         = 0;
                                    $total_actual_expenditures_storage = 0;

                                    for( $y=0; $y<count($year); $y++ ){

                                        $location = get_the_location_of_same_parameters_in_different_year( $data, $data[$i]['component_id'], $data[$i]['activity_id'], $data[$i]['output_id'], $data[$i]['iris_id'], $year[$y] );
                                    ?>

                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q1_actual'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q2_actual'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q3_actual'] ?></td>
                                    <td><?= ( is_null( $location ) ) ? '':$data[$location]['fn_progress_q4_actual'] ?></td>
                                    <td>
                                        <?= ( is_null($location) ) ? 0: $total_actual_expenditures_storage = $data[$location]['fn_progress_q1_actual'] + $data[$location]['fn_progress_q2_actual'] + $data[$location]['fn_progress_q3_actual'] + $data[$location]['fn_progress_q4_actual'] ?>
                                    </td>
                                    <?php
                                    $total_actual_expenditures += $total_actual_expenditures_storage;
                                    }//End for
                                    ?>

                                    <td><?= $total_actual_progress ?></td>
                                    <td><?= $total_actual_expenditures ?></td>
                                    <td><?= number_format( ( $total_actual_progress/$total_actual_expenditures )*100, 2 )  ?>%</td>
                                </tr>
                                <!-- Actual row end -->

                                <!-- Ratio row start -->
                                <tr component = "<?= $data[$i]['component_seq'] ?>">
                                    <td>Ratio (%)</td>
                                    <?php

                                    $total_ratio_progress_of_all_cumulative_year = 0;

                                    for( $y=0; $y<count($year); $y++ ){

                                        $total_ratio_progress_for_a_year = 0;
                                        $total_ratio_progress_temporary  = 0;

                                        $location = get_the_location_of_same_parameters_in_different_year( $data, $data[$i]['component_id'], $data[$i]['activity_id'], $data[$i]['output_id'], $data[$i]['iris_id'], $year[$y] );
                                    ?>

                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q1_physical_progress_actual'] == 0 || $data[$location]['q1_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q1_physical_progress_actual']/$data[$location]['q1_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q2_physical_progress_actual'] == 0 || $data[$location]['q2_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q2_physical_progress_actual']/$data[$location]['q2_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q3_physical_progress_actual'] == 0 || $data[$location]['q3_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q3_physical_progress_actual']/$data[$location]['q3_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q4_physical_progress_actual'] == 0 || $data[$location]['q4_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q4_physical_progress_actual']/$data[$location]['q4_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?= number_format($total_ratio_progress_for_a_year /= 4, 2) ?>%
                                    </td>
                                    <?php
                                    $total_ratio_progress_of_all_cumulative_year += $total_ratio_progress_for_a_year;
                                    }//End for
                                    ?>
                                    <td>Time Overdue</td>
                                    <td><?= $data[$i]['completion_date_time_overdue'] ?></td>
                                    <td>Ratio (%)</td>
                                    <?php

                                    $total_ratio_progress_financial_of_all_cumulative_year = 0;

                                    for( $y=0; $y<count($year); $y++ ){

                                        $total_ratio_progress_for_a_year = 0;
                                        $total_ratio_progress_temporary  = 0;

                                        $location = get_the_location_of_same_parameters_in_different_year( $data, $data[$i]['component_id'], $data[$i]['activity_id'], $data[$i]['output_id'], $data[$i]['iris_id'], $year[$y] );
                                    ?>

                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q1_physical_progress_actual'] == 0 || $data[$location]['q1_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q1_physical_progress_actual']/$data[$location]['q1_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q2_physical_progress_actual'] == 0 || $data[$location]['q2_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q2_physical_progress_actual']/$data[$location]['q2_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q3_physical_progress_actual'] == 0 || $data[$location]['q3_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q3_physical_progress_actual']/$data[$location]['q3_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if( is_null( $location ) || $data[$location]['q4_physical_progress_actual'] == 0 || $data[$location]['q4_physical_progress_target'] == 0 ){
                                            echo '';
                                        }else{
                                            echo $total_ratio_progress_temporary = number_format(( $data[$location]['q4_physical_progress_actual']/$data[$location]['q4_physical_progress_target'] )*(100), 2);
                                            echo '%';
                                            $total_ratio_progress_for_a_year += $total_ratio_progress_temporary;
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?= number_format($total_ratio_progress_for_a_year /= 4, 2) ?>%
                                    </td>
                                    <?php
                                    $total_ratio_progress_financial_of_all_cumulative_year += $total_ratio_progress_for_a_year;
                                    }//End for
                                    ?>


                                    <td><?= number_format($total_ratio_progress_of_all_cumulative_year /= count($year), 2) ?>%</td>
                                    <td><?= number_format($total_ratio_progress_financial_of_all_cumulative_year /= count($year), 2) ?>%</td>
                                    <td>
                                        <?= number_format( ( $total_ratio_progress_of_all_cumulative_year+$total_ratio_progress_financial_of_all_cumulative_year )/2, 2 )  ?>%
                                    </td>
                                </tr>
                                <!-- Ratio row end -->
                                <?php
                                }//End of for 
                                ?>
                                <?php
                                }//End of If
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