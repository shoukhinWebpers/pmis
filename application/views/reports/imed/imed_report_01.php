<div style="padding: 5px 5px 5px 5px" >
	<div style="text-align:center">
		<b>Government of the People's Republic of Bangladesh</b><br>
		<b>Ministry of Planning</b><br>
		<b style="text-decoration: underline;">Implementation Monitoring and Evaluation Division</b><br>
		<b style="font-weight:bold">Project Monitoring Form: <span style="text-decoration: underline;">IMED 03/<?= date( "Y",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> (Revised) (Page 1 of 4)</span></b><br>
		<p>(Quarterly Progress Report)</p><br>
		<?php $month_in_numeric = date( "m",strtotime( $quarterly_financial_progress->imed_creation ) ) ?>
		<p>ADP: <?= date( "Y-m-d",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> , Reporting Quarter: <?= ( $month_in_numeric%3 == 0 ) ? str_pad( $month_in_numeric/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( ($month_in_numeric/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></p><br><br>
		<b>A. Quarterly Financial Progress Report</b>
	</div>
<div style="box-shadow: 0px 3px 9px 3px black;padding: 11px;margin-top: 11px;margin-bottom: 23px;">
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

	<hr>
</div>
	<div class="pagebreak"></div>

	<div style="text-align:center">
		<b style="font-weight:bold">Project Monitoring Form: <span style="text-decoration: underline;">IMED 03/<?= date( "Y",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> (Revised) (Page 2 of 4)</span></b><br>
		<p>(Quarterly Progress Report)</p>
		<?php $month_in_numeric = date( "m",strtotime( $quarterly_financial_progress->imed_creation ) ) ?>
		<p>ADP: <?= date( "Y-m-d",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> , Reporting Quarter: <?= ( $month_in_numeric%3 == 0 ) ? str_pad( $month_in_numeric/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( ($month_in_numeric/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></p><br>
		<b>B. Quarterly Component-wise Progress</b>
	</div>
<div style="box-shadow: 0px 3px 9px 3px black;padding: 11px;margin-top: 11px;margin-bottom: 23px;">
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
		<div class="col-lg-1"><b>B.1</b></div>
		<div class="col-lg-11"><b>Project Title:</b><?= $quarterly_financial_progress->project_title ?></div>
	</div>
	<div class="row" style="margin-top: 12px;">
		<div class="col-lg-12"><b>B.2 Quarterly Component-wise Progress:</b></div>
	</div>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="vertical-align: top;" rowspan="3">SI. No</th>
					<th style="vertical-align: top; text-align: center" rowspan="3">
						Name of the Component<br>
						(As per Table E-1 of PP)<br>
						or<br>
						(As per Part E (32) of TAPP)
					</th>
					<th style="vertical-align: top; text-align: center" rowspan="3">Unit</th>
					<th style="vertical-align: top; text-align: center" colspan="3">Cumulative Progress Upto Last June</th>
					<th style="vertical-align: top; text-align: center" colspan="3">Yearly Target</th>
					<th style="vertical-align: top; text-align: center" colspan="3">Progress in Current Quarter</th>
					<th style="vertical-align: top; text-align: center" colspan="3">Current Year's Progress</th>
					<th style="vertical-align: top; text-align: center">Remarks</th>
				</tr>
				<tr>
					<th style="vertical-align: top; text-align: center" colspan="2">Physical</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Financial</th>
					<th style="vertical-align: top; text-align: center" colspan="2">Physical</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Financial</th>
					<th style="vertical-align: top; text-align: center" colspan="2">Physical</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Financial</th>
					<th style="vertical-align: top; text-align: center" colspan="2">Physical</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Financial</th>
					<th style="vertical-align: top; text-align: center" rowspan="2"></th>
				</tr>
				<tr>
					<th style="vertical-align: top; text-align: center">Qtty</th>
					<th style="vertical-align: top; text-align: center">%</th>
					<th style="vertical-align: top; text-align: center">Qtty</th>
					<th style="vertical-align: top; text-align: center">%</th>
					<th style="vertical-align: top; text-align: center">Qtty</th>
					<th style="vertical-align: top; text-align: center">%</th>
					<th style="vertical-align: top; text-align: center">Qtty</th>
					<th style="vertical-align: top; text-align: center">%</th>
				</tr>
			</thead>
			<tbody>
				<?php $counter = 1; ?>
				<?php foreach ($quarterly_component_wise_progress as $key => $value) { ?>
				<tr>
					<td><?= $counter ?></td>
					<td><?= $value->name_of_the_component ?></td>
					<td><?= $value->unit ?></td>
					<td><?= $value->cmltv_progress_upto_qtty ?></td>
					<td><?= $value->cmltv_progress_upto_prcntg ?></td>
					<td><?= $value->cmltv_progress_upto_finance ?></td>
					<td><?= $value->yearly_target_qtty ?></td>
					<td><?= $value->yearly_target_prcntg ?></td>
					<td><?= $value->yearly_target_finance ?></td>
					<td><?= $value->prgrs_in_crnt_qrtr_qtty ?></td>
					<td><?= $value->prgrs_in_crnt_qrtr_prcntg ?></td>
					<td><?= $value->prgrs_in_crnt_qrtr_financial ?></td>
					<td><?= $value->crnt_yrs_prgrs_qtty ?></td>
					<td><?= $value->crnt_yrs_prgrs_prcntg ?></td>
					<td><?= $value->crnt_yrs_prgrs_financial ?></td>
					<td><?= $value->remarks ?></td>
				</tr>
				<?php $counter++; ?>
				<?php } ?>
			</tbody>
		</table>
	</div>

	<hr>
</div>
	<div class="pagebreak"></div>

	<div style="text-align:center">
		<b style="font-weight:bold">Project Monitoring Form: <span style="text-decoration: underline;">IMED 03/<?= date( "Y",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> (Revised) (Page 3 of 4)</span></b><br>
		<p>(Quarterly Progress Report)</p>
		<?php $month_in_numeric = date( "m",strtotime( $quarterly_financial_progress->imed_creation ) ) ?>
		<p>ADP: <?= date( "Y-m-d",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> , Reporting Quarter: <?= ( $month_in_numeric%3 == 0 ) ? str_pad( $month_in_numeric/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( ($month_in_numeric/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></p><br>
		<b>C. Implementation Problems and Suggested Measures</b>
	</div>
<div style="box-shadow: 0px 3px 9px 3px black;padding: 11px;margin-top: 11px;margin-bottom: 23px;">
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
		<div class="col-lg-1"><b>C.1</b></div>
		<div class="col-lg-11"><b>Project Title:</b><?= $quarterly_financial_progress->project_title ?></div>
	</div>
	<div class="row" style="margin-top: 12px;">
		<div class="col-lg-12"><b>C.2 Implementation Problems:</b></div>
	</div>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="vertical-align: top;">Problem Number</th>
					<th style="vertical-align: top; text-align: center">Problem Type</th>
					<th style="vertical-align: top; text-align: center">Description of Problem (s)</th>
				</tr>
			</thead>
			<tbody>
				<?php $counter = 1; ?>
				<?php foreach ($implementation_problems as $key => $value) { ?>
				<tr>
					<td><?= $counter ?></td>
					<td><?= $value->problem_type ?></td>
					<td><?= $value->desc_of_problem ?></td>
				</tr>
				<?php $counter++; ?>
				<?php } ?>
			</tbody>
		</table>
	</div>
	<div class="row" style="margin-top: 12px;">
		<div class="col-lg-12"><b>C.3 Suggested Measures: (In breif and specific)</b></div>
	</div>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="vertical-align: top;">Problem Number</th>
					<th style="vertical-align: top; text-align: center">Measures Suggested</th>
				</tr>
			</thead>
			<tbody>
				<?php $counter = 1; ?>
				<?php foreach ($suggested_measure as $key => $value) { ?>
				<tr>
					<td><?= $counter ?></td>
					<td><?= $value->suggested_measures ?></td>
				</tr>
				<?php $counter++; ?>
				<?php } ?>
			</tbody>
		</table>
	</div>
	<div class="row" style="margin-top: 12px;">
		<div class="col-lg-12"><b>C.4 Is the project declared Completed: <?= ( $quarterly_financial_progress->project_declaration == 1 ) ? "Yes":"No" ?></b></div>
	</div>

	<hr>
</div>
	<div class="pagebreak"></div>

	<div style="text-align:center">
		<b style="font-weight:bold">Project Monitoring Form: <span style="text-decoration: underline;">IMED 03/<?= date( "Y",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> (Revised) (Page 4 of 4)</span></b><br>
		<p>(Quarterly Progress Report)</p>
		<?php $month_in_numeric = date( "m",strtotime( $quarterly_financial_progress->imed_creation ) ) ?>
		<p>ADP: <?= date( "Y-m-d",strtotime( $quarterly_financial_progress->imed_creation ) ) ?> , Reporting Quarter: <?= ( $month_in_numeric%3 == 0 ) ? str_pad( $month_in_numeric/3, 2, '0', STR_PAD_LEFT) : str_pad( floor( ( ($month_in_numeric/3) ) ) + 1, 2, '0', STR_PAD_LEFT ) ?></p><br>
		<b>D. Contract Implementation Report</b>
	</div>
<div style="box-shadow: 0px 3px 9px 3px black;padding: 11px;margin-top: 11px;
margin-bottom: 23px;">
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
		<div class="col-lg-1"><b>D.1</b></div>
		<div class="col-lg-11"><b>Project Title:</b><?= $quarterly_financial_progress->project_title ?></div>
	</div>
	<div class="row" style="margin-top: 12px;">
		<div class="col-lg-12"><b>D.2 Contract Implementation:</b></div>
	</div>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="vertical-align: top; text-align: center" rowspan="2">Description of contracts<br>(as per tender document)</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Contract value</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Date of work order/contract agreement</th>
					<th style="vertical-align: top; text-align: center" rowspan="2">Completion date as per contract</th>
					<th style="vertical-align: top; text-align: center" colspan="2">Progress</th>
				</tr>
				<tr>
					<th style="vertical-align: top; text-align: center">Amount paid</th>
					<th style="vertical-align: top; text-align: center">Physical (%)</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ( $contract_implementation as $key => $value ) { ?>
				<tr>
					<td><?= $value->desc_of_contracts ?></td>
					<td><?= $value->contract_value ?></td>
					<td><?= $value->date_of_work_order ?></td>
					<td><?= $value->completion_date_as_per_contract ?></td>
					<td><?= $value->amount_paid ?></td>
					<td><?= $value->physical ?></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
	<div class="row" style="margin-top: 12px;">
		<div class="col-lg-12"><b>D.3 Problems/Reasons for Delay in Contract Implementation (if any):</b></div>
	</div>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="vertical-align: top;">SI. No.</th>
					<th style="vertical-align: top; text-align: center">Description</th>
				</tr>
			</thead>
			<tbody>
				<?php $counter = 1; ?>
				<?php foreach ($reason_for_delaying as $key => $value) { ?>
				<tr>
					<td><?= $counter ?></td>
					<td><?= $value->delaying_description ?></td>
				</tr>
				<?php $counter++; ?>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>
</div>