<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Data collection for Works Contracts</h2>
    </div>
    <!-- /.col-lg-12 -->
</div>
<form role="form">
    <h2>Basic Info</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="contractPackageNumber">Contract Package Number</label>
                <input type="text" class="form-control" id="contractPackageNumber" placeholder="Enter contract package number">
            </div>
            <div class="form-group">
                <label for="contractDescription">Contract Description</label>
                <textarea class="form-control" id="contractDescription" rows="3" placeholder="Enter contract description"></textarea>
            </div>
            <div class="form-group">
                <label for="unit">Unit</label>
                <input type="text" class="form-control" id="unit" placeholder="Enter unit">
            </div>
            <div class="form-group">
                <label for="qty">Qty/Nos</label>
                <input type="text" class="form-control" id="qty" placeholder="Enter the quantity">
            </div>
            <div class="form-group">
                <label for="estimatedPrice">Estimated Price (in lakh Taka) (Actual Contract Price in Contract Currency)</label>
                <input type="text" class="form-control" id="qty" placeholder="Enter estimated price">
            </div>
            <div class="form-group">
                <label for="procedureMethod">Procedure/Method</label>
                <input type="text" class="form-control" id="procedureMethod" placeholder="Enter procedure/method">
            </div>
            <div class="form-group">
                <label for="procurementGuideline">Procurement Guideline (PPA/BG)</label>
                <input type="text" class="form-control" id="procurementGuideline" placeholder="Enter procurement guideline">
            </div>
            <div class="form-group">
                <label for="priorReview2">Prior Review 2 (Yes/No)</label>
                <input type="text" class="form-control" id="priorReview2" placeholder="Enter prior review">
            </div>
        </div>
    </div>
    <h2>EIA/IEE study report submission</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofBid">Planned Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofBid" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofBid">Actual Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofBid" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <h2>Social & Resettlement study report submission</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofBid">Planned Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofBid" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofBid">Actual Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofBid" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <h2>Date of Bid Opening</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofBid">Planned Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofBid" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofBid">Actual Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofBid" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <h2>Date of Contract Signing</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofContractSigning">Planned Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofContractSigning" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofContractSigning">Actual Date</label>
                <input type="text" class="form-control" id="actualDateforDateofContractSigning" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <h2>Date of Completion</h2>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="plannedDateforDateofDelivery">Planned Date</label>
                <input type="text" class="form-control" id="plannedDateforDateofDelivery" placeholder="Enter planned date">
            </div>
            <div class="form-group">
                <label for="actualDateforDateofDelivery">Actual Date</label>
                <input type="text" class="form-control" id="actualDateforDateofDelivery" placeholder="Enter actual date">
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="nameOfSupplier">Name of Contractor</label>
                <input type="text" class="form-control" id="nameOfSupplier" placeholder="Enter name of contractor">
            </div>
            <div class="form-group">
                <label for="progressOfProcurement">Progress of Procurement as of <?= date('d-M-Y') ?> [as %]</label>
                <input type="text" class="form-control" id="progressOfProcurement" placeholder="Enter the progress of procurement">
            </div>
            <div class="form-group">
                <label for="remarks">Remarks</label>
                <input type="text" class="form-control" id="remarks" placeholder="Remarks">
            </div>
        </div>
    </div>
    <a href="#" class="btn btn-info">Save and Add More Plan&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-plus"></span></a>
    <a href="#" class="btn btn-success">Submit</a>
</form>