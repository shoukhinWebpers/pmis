<div style="text-align:center">
	<b>Government of the People's Republic of Bangladesh</b><br>
	<b>Ministry of Planning</b><br>
	<b style="text-decoration: underline;">Implementation Monitoring and Evaluation Division</b><br>
	<b style="font-weight:bold">Project Monitoring Form: <span style="text-decoration: underline;">IMED 03/2003 (Revised) (Page 1 of 4)</span></b><br>
	<p>(Quarterly Progress Report)</p><br>
	<?php $month_in_numeric = date( "m",strtotime( $quarterly_financial_progress->imed_creation ) ) ?>
	<p>ADP: <?= date( "Y-m-d",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> , Reporting Quarter: <?= ( $month_in_numeric%3 == 0 ) ? str_pad( $month_in_numeric/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( ($month_in_numeric/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></p><br><br>
	<b>A. Quarterly Financial Progress Report</b>
</div>

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
<div class="row">
	<div class="col-lg-1"><b>A.1</b></div>
	<div class="col-lg-11"><b>a) Project Title:</b><?= $quarterly_financial_progress->project_title ?></div>
</div>
<div class="row">
	<div class="col-lg-11 col-lg-offset-1"><b>b) Ministry:</b><?= $quarterly_financial_progress->name_of_ministry ?></div>
</div>
<div class="row">
	<div class="col-lg-11 col-lg-offset-1"><b>c) Division:</b><?= $quarterly_financial_progress->division_name ?></div>
</div>
<div class="row">
	<div class="col-lg-11 col-lg-offset-1"><b>d) Agency:</b><?= $quarterly_financial_progress->agency_name ?></div>
</div>
<div class="row" style="margin-top: 12px;">
	<div class="col-lg-12"><b>A.2 Quarterly Financial Progress:</b></div>
</div>
<div class="table-responsive">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th style="vertical-align: top;" rowspan="2">Head</th>
				<th style="text-align: center" colspan="2">Release for the Quarter</th>
				<th style="text-align: center" colspan="3">Expenditure for the Quarter</th>
				<th style="text-align: center" colspan="3">Current Year's Expenditure</th>
			</tr>
			<tr>
				<th>GoB</th>
				<th>RPA</th>
				<th>GoB</th>
				<th>RPA</th>
				<th>DPA</th>
				<th>GoB</th>
				<th>RPA</th>
				<th>DPA</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Revenue</td>
				<td><?= $quarterly_financial_progress->release_for_the_quarter_revenue_gob ?></td>
				<td><?= $quarterly_financial_progress->release_for_the_quarter_revenue_rpa ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_revenue_gob ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_revenue_rpa ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_revenue_dpa ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_revenue_gob ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_revenue_rpa ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_revenue_dpa ?></td>
			</tr>
			<tr>
				<td>Capital</td>
				<td><?= $quarterly_financial_progress->release_for_the_quarter_capital_gob ?></td>
				<td><?= $quarterly_financial_progress->release_for_the_quarter_capital_rpa ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_capital_gob ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_capital_rpa ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_capital_dpa ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_capital_gob ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_capital_rpa ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_capital_dpa ?></td>
			</tr>
			<tr>
				<td><b>Grand Total</b></td>
				<td><?= $quarterly_financial_progress->release_for_the_quarter_revenue_gob + $quarterly_financial_progress->release_for_the_quarter_capital_gob ?></td>
				<td><?= $quarterly_financial_progress->release_for_the_quarter_revenue_rpa + $quarterly_financial_progress->release_for_the_quarter_capital_rpa ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_revenue_gob + $quarterly_financial_progress->exp_for_the_quarter_capital_gob ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_revenue_rpa + $quarterly_financial_progress->exp_for_the_quarter_capital_rpa  ?></td>
				<td><?= $quarterly_financial_progress->exp_for_the_quarter_revenue_dpa + $quarterly_financial_progress->exp_for_the_quarter_capital_dpa ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_revenue_gob + $quarterly_financial_progress->crnt_yrs_exp_capital_gob ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_revenue_rpa + $quarterly_financial_progress->crnt_yrs_exp_capital_rpa ?></td>
				<td><?= $quarterly_financial_progress->crnt_yrs_exp_revenue_dpa + $quarterly_financial_progress->crnt_yrs_exp_capital_dpa ?></td>
			</tr>
		</tbody>
	</table>
</div>
<div class="table-responsive">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th style="vertical-align: top; text-align: center" rowspan="2">Cash Foreign Exchange Spent</th>
				<th style="text-align: center" colspan="2">Spent from Own Resources</th>
				<th style="vertical-align: top; text-align: center" rowspan="2">CD/VAT</th>
			</tr>
			<tr>
				<th style="text-align: center">Cash</th>
				<th style="text-align: center">Kind</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><?= $quarterly_financial_progress->cash_frgn_exchng_spent ?></td>
				<td><?= $quarterly_financial_progress->cash ?></td>
				<td><?= $quarterly_financial_progress->kind ?></td>
				<td><?= $quarterly_financial_progress->cd_vat ?></td>
			</tr>
		</tbody>
	</table>
</div>

<div class="table-responsive">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th style="vertical-align: top; text-align: center" rowspan="2">RPA Spent<br>(Cumulative to Date)</th>
				<th style="text-align: center" colspan="2">RPA Claimed</th>
				<th style="text-align: center" colspan="2">RPA Reimbursed</th>
			</tr>
			<tr>
				<th style="text-align: center">Reporting Quarter</th>
				<th style="text-align: center">Cumulative to Date</th>
				<th style="text-align: center">Reporting Quarter</th>
				<th style="text-align: center">Cumulative to Date</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><?= $quarterly_financial_progress->rpa_spent ?></td>
				<td><?= $quarterly_financial_progress->rpa_claimed_1 ?></td>
				<td><?= $quarterly_financial_progress->rpa_claimed_2 ?></td>
				<td><?= $quarterly_financial_progress->rpa_reimbursed_1 ?></td>
				<td><?= $quarterly_financial_progress->rpa_reimbursed_2 ?></td>
			</tr>
		</tbody>
	</table>
</div>