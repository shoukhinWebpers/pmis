<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Data collection for Goods Contracts</h2>
    </div>
</div>

<?= form_open('submit_goods_contract', 'role="form" method="post"'); ?>
    <h2>Basic Info</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="contractPackageNumber">Contract Package Number</label>
                <input type="text" name="contract_package_number" class="form-control" id="contractPackageNumber" placeholder="Enter contract package number">
            </div>
            <div class="form-group">
                <label for="contractDescription">Contract Description</label>
                <textarea name="contract_description" class="form-control" id="contractDescription" rows="3" placeholder="Enter contract description"></textarea>
            </div>
            <div class="form-group">
                <label for="unit">Unit</label>
                <input name="unit" type="text" class="form-control" id="unit" placeholder="Enter unit">
            </div>
            <div class="form-group">
                <label for="qty">Qty/Nos</label>
                <input name="qty_nos" type="text" class="form-control" id="qty" placeholder="Enter the quantity">
            </div>
            <div class="form-group">
                <label for="estimatedPrice">Estimated Price (in lakh Taka) (Actual Contract Price in Contract Currency)</label>
                <input name="estimated_price" type="text" class="form-control" id="qty" placeholder="Enter estimated price">
            </div>
            <div class="form-group">
                <label for="estimatedPrice">Actual Contract Amount (in lakh Taka)</label>
                <input name="actual_contract_amount" type="text" class="form-control" id="qty" placeholder="Enter estimated price">
            </div>
            <div class="form-group">
                <label for="procedureMethod">Procedure/Method</label>
                <input name="procedure_method" type="text" class="form-control" id="procedureMethod" placeholder="Enter procedure/method">
            </div>
            <div class="form-group">
                <label for="procurementGuideline">Procurement Guideline (PPA/BG)</label>
                <input name="procurement_guideline" type="text" class="form-control" id="procurementGuideline" placeholder="Enter procurement guideline">
            </div>
            <div class="form-group">
                <label for="priorReview2">Prior Review 2 (Yes/No)</label>
                <input name="prior_review" type="text" class="form-control" id="priorReview2" placeholder="Enter prior review">
            </div>
        </div>
    </div>
    <h2>Date of Bid Opening</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofBid">Planned Date</label>
                <input name="date_of_bid_opening_planned_date" type="date" class="form-control" id="plannedDateforDateofBid" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofBid">Actual Date</label>
                <input name="date_of_bid_opening_actual_date" type="date" class="form-control" id="plannedDateforDateofBid" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <h2>Date of Contract Signing</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofContractSigning">Planned Date</label>
                <input name="date_of_contract_signing_planned_date" type="date" class="form-control" id="plannedDateforDateofContractSigning" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofContractSigning">Actual Date</label>
                <input name="date_of_contract_signing_actual_date" type="date" class="form-control" id="actualDateforDateofContractSigning" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <h2>Date of Delevery</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofDelivery">Planned Date</label>
                <input name="date_of_delivery_planned_date" type="date" class="form-control" id="plannedDateforDateofDelivery" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofDelivery">Actual Date</label>
                <input name="date_of_delivery_actual_date" type="date" class="form-control" id="actualDateforDateofDelivery" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-lg-3" >
                        <label for="progressOfProcurement">Expenditure (in Lakh Tk) Contractor as of</label>
                    </div>
                    <div class="col-lg-4" >
                        <input class="form-control" type="date" name="exp_date">
                    </div>
                    <div class="col-lg-4" >
                        <label for="progressOfProcurement">[as %]</label>
                    </div>
                </div>
                <input name="expenditure_contractor" type="text" class="form-control" id="progressOfProcurement" placeholder="Enter the contractor's expenditure">
            </div>
            <div class="form-group">
                <label for="progressOfProcurement">Expenditure (in Lakh Tk) VAT/TAX</label>
                <input name="expenditure_vat_tax" type="text" class="form-control" id="progressOfProcurement" placeholder="Enter the VAT/TAX expenditure">
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="nameOfSupplier">Name of Supplier</label>
                <input name="name_of_supplier" type="text" class="form-control" id="nameOfSupplier" placeholder="Enter name of supplier">
            </div>
            <div class="form-group">
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-lg-3" >
                        <label for="progressOfProcurement">Progress of Procurement as of</label>
                    </div>
                    <div class="col-lg-4" >
                        <input class="form-control" type="date" name="prgrss_date">
                    </div>
                    <div class="col-lg-4" >
                        <label for="progressOfProcurement">[as %]</label>
                    </div>
                </div>
                <input name="progress_of_procurement" type="text" class="form-control" id="progressOfProcurement" placeholder="Enter the progress of procurement">
            </div>
            <div class="form-group">
                <label for="remarks">Remarks</label>
                <input name="remarks" type="text" class="form-control" id="remarks" placeholder="Remarks">
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-info">Save and Add More Plan&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span></button>
    <a href="#" class="btn btn-success submit-confirmation">Submit</a>
<?= form_close(); ?>