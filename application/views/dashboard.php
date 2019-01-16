<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Dashboard</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-money fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge-custom">173m USD</div>
                        <div style="font-weight: bold">Approved Cost</div>
                    </div>
                </div>
            </div>
            <a href="<?= base_url('approved_cost') ?>" target="_blank">
                <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-tasks fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge-custom">22.7%</div>
                        <div style="font-weight: bold;">Financial Progress</div>
                    </div>
                </div>
            </div>
            <a href="<?= base_url('progress_urp') ?>" target="_blank">
                <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-money fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge-custom">40.56m USD</div>
                        <div style="font-weight: bold;">ADP (2018-19)</div>
                    </div>
                </div>
            </div>
            <a href="<?= base_url('adp') ?>" target="_blank">
                <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-align-left fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge-custom">30.48%</div>
                        <div style="font-weight: bold;">ADP Progress<br>(2018-19)</div>
                    </div>
                </div>
            </div>
            <a href="<?= base_url('progress_urp') ?>" target="_blank">
                <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>
<!-- /.row -->

<!-- row start -->
<div class="row">
    <!-- The approved cost of Urban Resilience Project (URP) Start -->
    <div class="col-lg-4">
        <div class="panel panel-default" style="height: 473px">
            <div class="panel-heading">
                The approved cost of Urban Resilience Project (URP)
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-pie-chart"></div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
    <!-- The approved cost of Urban Resilience Project (URP) Start -->
    <!-- Expenditure by Agencies with regard to Revised ADP FY 2017-18 Start -->
    <div class="col-lg-4">
        <!-- /.panel -->
        <div class="panel panel-default" style="height: 473px">
            <div class="panel-heading">
                <i class="fa fa-bar-chart-o fa-fw"></i>&nbsp;ADP (FY 2018-19) Allocation of URP
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-bar-chart2"></div>
                <div style="text-align: center"><a href="<?= base_url('adp') ?>" target="_blank">Click here to view report</a></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- Expenditure by Agencies with regard to Revised ADP FY 2017-18 End -->
    <!-- Expenditure by Agencies with regard to Revised ADP FY 2017-18 Start -->
    <div class="col-lg-4">
        <!-- /.panel -->
        <div class="panel panel-default" style="height: 473px">
            <div class="panel-heading">
                <i class="fa fa-bar-chart-o fa-fw"></i>&nbsp;Expenditure by Agencies with regard to Revised ADP FY 2017-18
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-bar-chart"></div>
                <div style="text-align: center"><a href="<?= base_url('expbyagency') ?>" target="_blank">Click here to view report</a></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- Expenditure by Agencies with regard to Revised ADP FY 2017-18 End -->   
</div><!-- row end -->

<!-- row start -->
<!--
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Progress of URP (Upto Sep 2018)
            </div>
            /.panel-heading
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="morris-bar-chart3"></div>
                </div>
            </div>
            /.panel-body
        </div>
        /.panel
    </div>
    /.col-lg-6
</div>row end -->

<div class="row">
    <!-- The aproved cost of Urban Resilience Project Start -->
    <div class="col-lg-12">
        <!-- /.panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-money fa-fw"></i>&nbsp;The approved cost of Urban Resilience Project (URP)
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" style="height: 250px; overflow: auto;">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>SL. No. </th>
                                    <th>Implementation Agency Name (Implementation Period)</th>
                                    <th>Total Cost (in lac tk.)</th>
                                    <th>GoB (in lac tk.)</th>
                                    <th>PA (in lac tk.)</th>
                                    <th>PA (in million US$)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>URP:DNCC (01/07/2015-30/06/2020)</td>
                                    <td>74605</td>
                                    <td>1455</td>
                                    <td>73150</td>
                                    <td>95 m US$</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>URP:RAJUK (01/07/2015-30/06/2020)</td>
                                    <td>42990</td>
                                    <td>2180</td>
                                    <td>40810</td>
                                    <td>53 m US$</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>URP:DDM (01/07/2015-30/06/2020)</td>
                                    <td>12550</td>
                                    <td>1000</td>
                                    <td>11550</td>
                                    <td>15 m US$</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>URP:PCMU (01/07/2015-30/06/2020)</td>
                                    <td>8000</td>
                                    <td>300</td>
                                    <td>7700</td>
                                    <td>10 m US$</td>
                                </tr>
                                <tr>
                                    <td>Total</td>
                                    <td>&nbsp;</td>
                                    <td>138145</td>
                                    <td>4935</td>
                                    <td>133210</td>
                                    <td>173 m US$</td>
                                </tr>
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
<!-- /.row -->

<div class="row">
    <!-- ADP (FY 2018-19) Allocation of URP: (in Lac Tk.) Start -->
    <div class="col-lg-12">
        <!-- /.panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-list-ol fa-fw"></i>&nbsp;ADP (FY 2018-19) Allocation of URP: (in Lac Tk.)
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" style="height: 250px; overflow: auto;">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>SL. No. </th>
                                    <th>Implementation Agency Name</th>
                                    <th colspan="4" rowspan="1">ADP (2018-19) Allocation&nbsp;&nbsp;&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>Total</td>
                                    <td>GoB</td>
                                    <td>PA</td>
                                    <td>PA (in million US$)</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>URP:DNCC</td>
                                    <td>21200</td>
                                    <td>200</td>
                                    <td>21000</td>
                                    <td>26.25 m US$</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>URP:RAJUK</td>
                                    <td>5500</td>
                                    <td>500</td>
                                    <td>5000</td>
                                    <td>6.25 m US$</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>URP:DDM</td>
                                    <td>4474</td>
                                    <td>250</td>
                                    <td>4224</td>
                                    <td>5.28 m US$</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>URP:PCMU</td>
                                    <td>2344</td>
                                    <td>119</td>
                                    <td>2225</td>
                                    <td>2.78 m US$</td>
                                </tr>
                                <tr>
                                    <td>Total</td>
                                    <td>&nbsp;</td>
                                    <td>33518</td>
                                    <td>1069</td>
                                    <td>32449</td>
                                    <td>40.58 m US$</td>
                                </tr>
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
    <!-- ADP (FY 2018-19) Allocation of URP: (in Lac Tk.) End -->
</div>

<!-- row start -->
<div class="row">
    <!-- Progress of URP (Upro Sep 2018) (in Lac Tk.) Start -->
    <div class="col-lg-12">
        <!-- /.panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-tasks fa-fw"></i>&nbsp;Progress of URP (Upto Sep 2018) (in Lac Tk.)
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" style="height: 271px; overflow: auto;">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>SL. No. </th>
                                    <th>Implementation Agency Name</th>
                                    <th>Up to June, 2018</th>
                                    <th>Up to Sep of FY 2018-19</th>
                                    <th>% of progress w.r.t ADP FY 2018-19</th>
                                    <th>Culmulative Progress up to Sep 2018 w.r.t approved cost</th>
                                    <th>% of Culmulative Progress w.r.t approve cost</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>URP:DNCC</td>
                                    <td>18570.56</td>
                                    <td>10084.01</td>
                                    <td>47.57</td>
                                    <td>28654.57</td>
                                    <td>38.41</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>URP:RAJUK</td>
                                    <td>1551.16</td>
                                    <td>29</td>
                                    <td>0.53</td>
                                    <td>1580.16</td>
                                    <td>3.68</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>URP:DDM</td>
                                    <td>702.6</td>
                                    <td>71.42</td>
                                    <td>1.6</td>
                                    <td>774.02</td>
                                    <td>6.17</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>URP:PCMU</td>
                                    <td>381.1</td>
                                    <td>32.18</td>
                                    <td>1.37</td>
                                    <td>413.28</td>
                                    <td>5.17</td>
                                </tr>
                                <tr>
                                    <td>Total</td>
                                    <td>&nbsp;</td>
                                    <td>21205.42</td>
                                    <td>10216.61</td>
                                    <td>30.48</td>
                                    <td>41422.03</td>
                                    <td>22.75</td>
                                </tr>
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
    <!-- Progress of URP (Upro Sep 2018) (in Lac Tk.) End -->
</div><!-- row end -->

<div class="row">
    <!-- Financial Expenditures in Fourth Quarter of Fiscal Year 2018 (4th Q FY2018) Start -->
    <div class="col-lg-12">
        <!-- /.panel -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-cubes fa-fw"></i>&nbsp;Expenditure by Agencies with regard to Revised ADP FY 2017-18
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" style="height: 250px; overflow: auto;">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>Name<br />of IA</th>
                                    <th colspan="3">Expenditures by Month in 4th Quarter<br />of FY 2018<br /><br /></th>
                                    <th>ADP<br />Allocation<br />(In Lac, Tk.)</th>
                                    <th>% of progress vs.<br />Revised ADP (4th<br />Q FY 2018)</th>
                                    <th>% of cumulative<br />expenditures in 4th<br />Q FY 2018</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>April</td>
                                    <td>May</td>
                                    <td>June</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>DNCC</td>
                                    <td>242.18</td>
                                    <td>74.68</td>
                                    <td>4051.25</td>
                                    <td>17600</td>
                                    <td>99.82</td>
                                    <td>24.9</td>
                                </tr>
                                <tr>
                                    <td>DDM</td>
                                    <td>30.86</td>
                                    <td>37.41</td>
                                    <td>203.1</td>
                                    <td>2200</td>
                                    <td>19.37</td>
                                    <td>5.6</td>
                                </tr>
                                <tr>
                                    <td>RAJUK</td>
                                    <td>53.73</td>
                                    <td>32.72</td>
                                    <td>1034.28</td>
                                    <td>2150</td>
                                    <td>61.56</td>
                                    <td>3.6</td>
                                </tr>
                                <tr>
                                    <td>PCMU</td>
                                    <td>6.66</td>
                                    <td>5.90</td>
                                    <td>239.91</td>
                                    <td>400</td>
                                    <td>80.21</td>
                                    <td>4.8</td>
                                </tr>
                                <tr>
                                    <td>TOTAL</td>
                                    <td>574</td>
                                    <td>419</td>
                                    <td>5672</td>
                                    <td>22,350</td>
                                    <td>88.05</td>
                                    <td>15.35</td>
                                </tr>
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
    <!-- Financial Expenditures in Fourth Quarter of Fiscal Year 2018 (4th Q FY2018) End -->
</div>

<!-- row start -->
<!--<div class="row">-->
    <!-- Progress summary of procurement packages< Start -->
<!--    <div class="col-lg-12">-->
        <!-- /.panel -->
<!--        <div class="panel panel-default">-->
<!--            <div class="panel-heading">-->
<!--                <i class="fa fa-cube fa-fw"></i>&nbsp;Progress summary of procurement packages-->
<!--            </div>-->
            <!-- /.panel-heading -->
<!--            <div class="panel-body" style="height: 250px; overflow: auto;">-->
<!--                <div class="row">-->
<!--                    <div class="col-lg-12">-->
<!--                        <table class="table table-striped table-bordered">-->
<!--                            <thead>-->
<!--                                <tr>-->
<!--                                    <th>Status</th>-->
<!--                                    <th>Tender Floated?</th>-->
<!--                                    <th>Evaluation Report to WB?</th>-->
<!--                                    <th>NOL from Bank received?</th>-->
<!--                                    <th>Contract signed?</th>-->
<!--                                    <th>Product deliv-ered?</th>-->
<!--                                </tr>-->
<!--                            </thead>-->
<!--                            <tbody>-->
<!--                                <tr>-->
<!--                                    <td>TOTAL KAAs</td>-->
<!--                                    <td>17</td>-->
<!--                                    <td>17</td>-->
<!--                                    <td>17</td>-->
<!--                                    <td>17</td>-->
<!--                                    <td>17</td>-->
<!--                                </tr>-->
<!--                                <tr>-->
<!--                                    <td>Completed</td>-->
<!--                                    <td>15</td>-->
<!--                                    <td>15</td>-->
<!--                                    <td>14</td>-->
<!--                                    <td>13</td>-->
<!--                                    <td>6</td>-->
<!--                                </tr>-->
<!--                                <tr>-->
<!--                                    <td>Not Com-pleted</td>-->
<!--                                    <td>0</td>-->
<!--                                    <td>0</td>-->
<!--                                    <td>0</td>-->
<!--                                    <td>1</td>-->
<!--                                    <td>7</td>-->
<!--                                </tr>-->
<!--                                <tr>-->
<!--                                    <td>Unclear (?)</td>-->
<!--                                    <td>2</td>-->
<!--                                    <td>2</td>-->
<!--                                    <td>2</td>-->
<!--                                    <td>0</td>-->
<!--                                    <td>0</td>-->
<!--                                </tr>-->
<!--                                <tr>-->
<!--                                    <td>Not Appli-cable</td>-->
<!--                                    <td>0</td>-->
<!--                                    <td>0</td>-->
<!--                                    <td>1</td>-->
<!--                                    <td>3 (due in future)</td>-->
<!--                                    <td>4 (due in future)</td>-->
<!--                                </tr>-->
<!--                            </tbody>-->
<!--                        </table>-->
<!--                    </div>-->
                    <!-- /.col-lg-4 (nested) -->
<!--                </div>-->
                <!-- /.row -->
<!--            </div>-->
            <!-- /.panel-body -->
<!--        </div>-->
        <!-- /.panel -->
<!--    </div>-->
    <!-- Progress summary of procurement packages< End -->       
<!--</div>-->
<!-- row end -->