<div>
    <h3>Imed report list</h3>
    
    <table id="imed-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Details</th>
            </tr>
        </thead>
        <tbody>
    <?php foreach($reports as $data ){ ?>
             <tr><td><?php echo $data->id; ?></td><td><?php echo $data->project_title; ?></td><td><a class="btn btn-primary" href="<?php echo "./imed_report/".$data->id; ?>">Details</a></td></tr>   
    <?php } ?>
        </tbody>
    </table>
</div>