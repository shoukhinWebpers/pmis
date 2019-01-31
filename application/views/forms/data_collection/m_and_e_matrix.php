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
                <?= form_dropdown( 'component', $component, '','id="component" class="form-control related-to-component"' ); ?>
            </div>
            <div class="form-group">
                <label id="sibling_sub_component" for="contractDescription">Select a Sub Component</label>
                <select id="sub_component" class="form-control related-to-component">
                    <option value="">Please select a component first</option>
                </select>
            </div>
            <div class="form-group">
                <label id="sibling_output" for="contractDescription">Select an Output</label>
                <select id="output" class="form-control related-to-component">
                    <option value="">Please select a sub component first</option>
                </select>
            </div>
            <div class="form-group">
                <label id="sibling_iris" for="contractDescription">Select an IRIs</label>
                <select id="iris" class="form-control related-to-component">
                    <option value="">Please select an output first</option>
                </select>
            </div>
        </div>
    </div>
    <a href="<?= base_url('mem') ?>" class="btn btn-success">Submit</a>
<?= form_close(); ?>