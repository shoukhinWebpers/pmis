<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Monitoring and Evaluation Matrix</h2>
    </div>
</div>

<?= form_open('#', 'role="form" method="post"'); ?>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-group">
                <label for="contractPackageNumber">Select a Component</label>
                <select id="component" class="form-control">
                    <option value="">Select a component</option>
                    <option value="1">Component A: Reinforce the country’s Emergency Management Response capacity</option>
                    <option value="2">Component B: Vulnerability Assessment of Critical and Essential Facilities and Lifeline (Implemented by Rajuk)</option>
                    <option value="3">Component C: Improved construction, urban planning and development</option>
                </select>
            </div>
            <div class="form-group">
                <label for="contractDescription">Select a Sub Component</label>
                <select id="sub_component" class="form-control">
                    <option value="">Select a sub component</option>
                    <option style="display: none" value="1" group="1">A1: Design, build and outfit national- level Disaster Risk Management (DRM) facilities for the Emergency Response and Communication Centre (ERCC) and the National Disaster Management Research and Training Institute (NDMRTI).</option>
                    <option style="display: none" value="2" group="1">A2: Build, Renovate, and Outfit Local-Level City Corporation and FSCD DRM facilities in Dhaka and Sylhet</option>
                    <option style="display: none" value="3" group="2">B1: Conduct a vulnerability assessment of critical and essential facilities and lifelines</option>
                    <option style="display: none" value="4" group="2">B2: Support the development of a Risk Sensitive Land Use Planning (RSLUP) practice in Dhaka</option>
                    <option style="display: none" value="5" group="3">C1: Create and operationalize the Urban Resilience Unit (URU) in Rajuk to Support DRR Mainstreaming and Improve Dhaka Urban Resilience.</option>
                    <option style="display: none" value="6" group="3">C2: Establish an Electronic Construction Permitting System</option>
                </select>
            </div>
            <div class="form-group">
                <label for="contractDescription">Select an Output</label>
                <select id="output" class="form-control">
                    <option style="display: none" value="">Select an output</option>
                    <option style="display: none" value="1" group="1">ERCC and NDMRTI Renovated with basic office equipment</option>
                    <option style="display: none" value="2" group="2">Database of Critical and Essential Facilities developed;</option>
                    <option style="display: none" value="3" group="2">Structural Vulnerability Assessment surveyed</option>
                    <option style="display: none" value="4" group="3">URU is created within RAJUK</option>
                </select>
            </div>
            <div class="form-group">
                <label for="contractDescription">Select an IRIs</label>
                <select id="iris" class="form-control">
                    <option style="display: none" value="">Select an IRI</option>
                    <option style="display: none" value="1" group="1">DDM facilities renovated (ERCC, NDMRTI)</option>
                    <option style="display: none" value="2" group="2">Identification of critical and essential facilities and lifelines for Dhaka</option>
                    <option style="display: none" value="3" group="2">Vulnerability of prioritized critical and essential facilities and lifelines assessed for Dhaka</option>
                    <option style="display: none" value="4" group="3">RAJUK Urban Resilience Unit facility constructed</option>
                    <option style="display: none" value="5" group="3">RAJUK Urban Resilience Unit facility equipped with laboratory and field testing equipment</option>
                </select>
            </div>
        </div>
    </div>
    <a href="<?= base_url('mem') ?>" class="btn btn-success">Submit</a>
<?= form_close(); ?>