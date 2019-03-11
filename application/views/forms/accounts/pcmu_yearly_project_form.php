<?= form_open('pcmu_yearly_project_form_submit', 'role="form" method="post"'); ?>
  <div style="margin-top: 10px;">
    <div class="row" style="margin-bottom: 10px;">

      <div class="col-lg-4">
        <span style="font-weight: bold; float: left;">"ইউআরপিঃ পিসিএমইউ পার্ট " প্রকল্পের - </span>
      </div>
      <div class="col-lg-4">
        <?php
        $fiscal_year = array();
        $fiscal_year[''] = "অনুগ্রহ করে একটি অর্থবছর নির্বাচন করুন";
        $already_exist = false;
        for( $i = date('Y'); $i >= 1991; $i-- ){

          $fiscal_year_data = $i.'-'.date( 'y', strtotime( "1/1/".($i+1) ) );

          for ( $j=0; $j < sizeof($existed_fiscal_year) ; $j++ ) { 
                  
            if( $fiscal_year_data == $existed_fiscal_year[$j]['fiscal_year'] ){
              $already_exist = true;
              break;
            }else{
              $already_exist = false;
            }

          }

          if( !$already_exist ){

            $fiscal_year[$fiscal_year_data] = convert_numeric_to_bangla( $fiscal_year_data );
            
          }

        }
        ?>
        <?= form_dropdown('fiscal_year', $fiscal_year, '', "class = 'form-control'"); ?>
      </div>
      <div class="col-lg-4">
        <span style="font-weight: bold; float: right;">সালের এডিপি বরাদ্দের বিস্তারিত বিভাজন</span><br>
      </div>
      
    </div>
    <!-- <div style="text-align: center;">
        
      
    <br>
    </div> -->
    <table style="text-align: left; width: 100%;" border="1" cellpadding="2"
     cellspacing="2">
      <tbody>
        <tr>
          <td colspan="1" rowspan="2"
     style="vertical-align: top; width: 110px; text-align: center; background-color: black; color: white;">&#2453;&#2507;&#2465;</td>
          <td colspan="1" rowspan="2"
     style="vertical-align: top; text-align: center; width: 231px; background-color: black; color: white;">&#2437;&#2457;&#2509;&#2455;&#2503;&#2480;
    &#2472;&#2494;&#2478;<br>
          </td>
          <td colspan="1" rowspan="2"
     style="vertical-align: top; text-align: center; width: 214px; background-color: black; color: white;">&#2460;&#2495;&#2451;&#2476;&#2495;<br>
          </td>
          <td colspan="3" rowspan="1"
     style="vertical-align: top; text-align: center; background-color: black; color: white;">&#2474;&#2509;&#2480;&#2453;&#2482;&#2509;&#2474;
    &#2488;&#2494;&#2489;&#2494;&#2479;&#2509;&#2479;<br>
          </td>
          <td colspan="1" rowspan="2"
     style="vertical-align: top; text-align: center; background-color: black; color: white;">&#2488;&#2480;&#2509;&#2476;&#2478;&#2507;&#2463;<br>
          </td>
        </tr>
        <tr>
          <td
     style="vertical-align: top; text-align: center; background-color: black; color: white;">&#2438;&#2480;&#2474;&#2495;&#2447;
          <br>
    (&#2460;&#2495;&#2451;&#2476;&#2495;'&#2480; &#2478;&#2494;&#2470;&#2509;&#2471;&#2478;&#2503;)</td>
          <td
     style="vertical-align: top; text-align: center; background-color: black; color: white;">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479;
    &#2438;&#2480;&#2474;&#2495;&#2447; <br>
    ( &#2465;&#2488;&#2494;, &#2453;&#2507;&#2472;&#2463;&#2494;&#2488;&#2494;<br>
    &nbsp;&#2488;&#2503;&#2475;, &#2439;&#2478;&#2509;&#2474;&#2509;&#2480;&#2503;&#2488;&#2509;&#2463;)<br>
          </td>
          <td
     style="vertical-align: top; text-align: center; background-color: black; color: white;">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479;
    &#2438;&#2480;&#2474;&#2495;&#2447; <br>
    &#2476;&#2509;&#2479;&#2468;&#2495;&#2468; <br>
    &#2474;&#2509;&#2480;&#2453;&#2482;&#2509;&#2474; &#2488;&#2494;&#2489;&#2494;&#2479;&#2509;&#2479;&#2451;<br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; width: 231px; text-align: center;">&#2438;&#2476;&#2480;&#2509;&#2468;&#2453;
    &#2476;&#2509;&#2479;&#2527;<br>
          </td>
          <td style="vertical-align: top; width: 214px;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;"><span
     style="font-weight: bold;">&#2537;&#2535;</span><br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2480;&#2509;&#2478;&#2458;&#2494;&#2480;&#2496;&#2470;&#2503;&#2480;
    &#2474;&#2509;&#2480;&#2468;&#2495;&#2470;&#2494;&#2472;<br>
          </td>
          <td style="vertical-align: top; width: 214px;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2478;&#2498;&#2482; &#2476;&#2503;&#2468;&#2472; (&#2437;&#2475;&#2495;&#2488;&#2494;&#2480;)<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_officer_salary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_officer_salary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_officer_salary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_officer_salary">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2536;&#2534;&#2535;</td>
          <td style="vertical-align: top; width: 231px;">&#2478;&#2498;&#2482; &#2476;&#2503;&#2468;&#2472; (&#2453;&#2480;&#2509;&#2478;&#2458;&#2494;&#2480;&#2496;)</td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_other_official_salary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_other_official_salary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_other_official_salary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_other_official_salary">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; width: 231px; text-align: center; font-weight: bold;">&#2477;&#2494;&#2468;&#2494;&#2470;&#2495;</td>
          <td colspan="5" rowspan="1"
     style="vertical-align: top; width: 214px;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2534;&#2536;</td>
          <td style="vertical-align: top; width: 231px;">&#2479;&#2494;&#2468;&#2494;&#2527;&#2494;&#2468; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_transport">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_transport">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_transport">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_transport">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2534;&#2540;</td>
          <td style="vertical-align: top; width: 231px;">&#2486;&#2495;&#2453;&#2509;&#2487;&#2494; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_education_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_education_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_education_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_education_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2535;&#2534;</td>
          <td style="vertical-align: top; width: 231px;">&#2476;&#2494;&#2524;&#2496; &#2477;&#2494;&#2524;&#2494; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_home_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_home_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_home_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_home_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2535;&#2535;</td>
          <td style="vertical-align: top; width: 231px;">&#2458;&#2495;&#2453;&#2495;&#2510;&#2488;&#2494; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_medical_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_medical_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_medical_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_medical_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2535;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2463;&#2495;&#2475;&#2495;&#2472; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_tiffin_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_tiffin_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_tiffin_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_tiffin_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2536;&#2539;</td>
          <td style="vertical-align: top; width: 231px;">&#2441;&#2510;&#2488;&#2476; &#2477;&#2494;&#2468;&#2494; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_festival_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_festival_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_festival_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_festival_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2536;&#2542;</td>
          <td style="vertical-align: top; width: 231px;">শ্রান্তি বিনোদন <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_sranti_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_sranti_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_sranti_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_sranti_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2537;&#2535;</td>
          <td style="vertical-align: top; width: 231px;">&#2438;&#2474;&#2509;&#2479;&#2494;&#2527;&#2472; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_complimentary_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_complimentary_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_complimentary_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_complimentary_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2535;&#2535;&#2535;&#2537;&#2537;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2477;&#2494;&#2468;&#2494; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_other_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_other_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_other_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_other_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;"><br>
          </td>
          <td style="vertical-align: top; width: 231px; text-align: right;">&#2478;&#2507;&#2463;
    &#2477;&#2494;&#2468;&#2494;&#2470;&#2495;<br>
          </td>
          <td style="vertical-align: top; width: 214px;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; width: 231px; text-align: center;">&#2478;&#2507;&#2463;
    &#2476;&#2503;&#2468;&#2472; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td
     style="vertical-align: top; width: 110px; text-align: center; font-weight: bold;">&#2537;&#2536;<br>
          </td>
          <td style="vertical-align: top; width: 231px; font-weight: bold;">&#2474;&#2467;&#2509;&#2479;
    &#2451; &#2488;&#2503;&#2476;&#2494;&#2480; &#2476;&#2509;&#2479;&#2476;&#2489;&#2494;&#2480;<br>
          </td>
          <td colspan="5" rowspan="1"
     style="vertical-align: top; width: 214px;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2534;&#2538;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2468;&#2495;&#2480;&#2495;&#2453;&#2509;&#2468; &#2453;&#2494;&#2460;&#2503;&#2480; &#2477;&#2494;&#2468;&#2494;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_overtime_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_overtime_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_overtime_allow">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_overtime_allow">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2534;&#2540;</td>
          <td style="vertical-align: top; width: 231px;">&#2438;&#2474;&#2509;&#2479;&#2494;&#2527;&#2472; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_compliments">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_compliments">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_compliments">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_compliments">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2535;&#2535;</td>
          <td style="vertical-align: top; width: 231px;">&#2488;&#2503;&#2478;&#2495;&#2472;&#2494;&#2480;, &#2453;&#2472;&#2475;&#2494;&#2480;&#2503;&#2472;&#2509;&#2488;
          <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_seminar">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_seminar">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_seminar">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_seminar">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2535;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2476;&#2509;&#2479;&#2527; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_others_expenditure">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_others_expenditure">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_others_expenditure">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_others_expenditure">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2535;&#2540;</td>
          <td style="vertical-align: top; width: 231px;">&#2465;&#2494;&#2453; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_post">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_post">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_post">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_post">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2535;&#2541;</td>
          <td style="vertical-align: top; width: 231px;">&#2463;&#2503;&#2482;&#2503;&#2453;&#2509;&#2488;/&#2475;&#2509;&#2479;&#2494;&#2453;&#2509;&#2488; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_fax">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_fax">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_fax">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_fax">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2536;&#2534;</td>
          <td style="vertical-align: top; width: 231px;">&#2463;&#2503;&#2482;&#2495;&#2475;&#2507;&#2472;/&#2463;&#2503;&#2482;&#2495;&#2455;&#2509;&#2480;&#2494;&#2478;/&#2463;&#2503;&#2482;&#2495;&#2474;&#2509;&#2480;&#2495;&#2472;&#2509;&#2463;&#2494;&#2480;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_telephone">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_telephone">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_telephone">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_telephone">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2536;&#2539;</td>
          <td style="vertical-align: top; width: 231px;">&#2476;&#2495;&#2460;&#2509;&#2462;&#2494;&#2474;&#2472; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_advertising">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_advertising">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_advertising">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_advertising">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2536;&#2540;</td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2465;&#2495;&#2451;,
    &#2477;&#2495;&#2465;&#2495;&#2451;/&#2458;&#2482;&#2458;&#2495;&#2468;&#2509;&#2480; &#2472;&#2495;&#2480;&#2509;&#2478;&#2494;&#2467; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_film_making">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_film_making">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_film_making">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_film_making">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2536;&#2541;</td>
          <td style="vertical-align: top; width: 231px;">&#2476;&#2439; &#2451; &#2488;&#2494;&#2478;&#2527;&#2495;&#2453;&#2496; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_book">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_book">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_book">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_book">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2535;&#2535;&#2535;&#2536;&#2543;</td>
          <td style="vertical-align: top; width: 231px;">&#2477;&#2494;&#2524;&#2494;- &#2437;&#2475;&#2495;&#2488; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_office_rent">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_office_rent">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_office_rent">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_office_rent">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2536;&#2535;&#2535;&#2534;&#2538;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2480;&#2503;&#2460;&#2495;&#2488;&#2509;&#2463;&#2509;&#2480;&#2503;&#2486;&#2472; &#2475;&#2495; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_reg_fee">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_reg_fee">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_reg_fee">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_reg_fee">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2536;&#2535;&#2535;&#2534;&#2542;</td>
          <td style="vertical-align: top; width: 231px;">&#2476;&#2496;&#2478;&#2494;/&#2476;&#2509;&#2479;&#2494;&#2434;&#2453; &#2458;&#2494;&#2480;&#2509;&#2460; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_bank_charge">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_bank_charge">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_bank_charge">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_bank_charge">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2536;&#2535;&#2535;&#2535;&#2534;</td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2478;&#2495;&#2486;&#2472;/&#2488;&#2497;&#2470; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_interest">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_interest">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_interest">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_interest">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2537;&#2535;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2476;&#2504;&#2470;&#2503;&#2486;&#2495;&#2453; &#2474;&#2509;&#2480;&#2486;&#2495;&#2453;&#2509;&#2487;&#2472;
    &#2476;&#2509;&#2479;&#2527; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_oversease_training">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_oversease_training">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_oversease_training">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_oversease_training">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2537;&#2535;&#2536;&#2534;&#2535;</td>
          <td style="vertical-align: top; width: 231px;">&#2438;&#2477;&#2509;&#2479;&#2472;&#2509;&#2468;&#2480;&#2496;&#2467;
    &#2474;&#2509;&#2480;&#2486;&#2495;&#2453;&#2509;&#2487;&#2472; &#2476;&#2509;&#2479;&#2527;</td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_internal_training">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_internal_training">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_internal_training">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_internal_training">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2538;&#2535;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2438;&#2477;&#2509;&#2479;&#2472;&#2509;&#2468;&#2480;&#2496;&#2467; &#2477;&#2509;&#2480;&#2478;&#2467;
    &#2476;&#2509;&#2479;&#2527;</td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_internal_transport">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_internal_transport">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_internal_transport">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_internal_transport">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2538;&#2537;&#2535;&#2534;&#2535;</td>
          <td style="vertical-align: top; width: 231px;">&#2474;&#2503;&#2463;&#2509;&#2480;&#2507;&#2482; &#2451;
    &#2482;&#2497;&#2476;&#2509;&#2480;&#2495;&#2453;&#2503;&#2472;&#2509;&#2463;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_petrol_lubricant">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_petrol_lubricant">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_petrol_lubricant">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_petrol_lubricant">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2538;&#2537;&#2535;&#2534;&#2536;</td>
          <td style="vertical-align: top; width: 231px;">&#2455;&#2509;&#2479;&#2494;&#2488; &#2451; &#2460;&#2509;&#2476;&#2494;&#2482;&#2494;&#2472;&#2496;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_fuel_and_gas">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_fuel_and_gas">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_fuel_and_gas">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_fuel_and_gas">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2539;&#2535;&#2534;&#2536;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2478;&#2497;&#2470;&#2509;&#2480;&#2472; &#2451; &#2474;&#2509;&#2480;&#2453;&#2494;&#2486;&#2472;&#2494; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_publication">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_publication">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_publication">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_publication">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2539;&#2535;&#2534;&#2539;</td>
          <td style="vertical-align: top; width: 231px;">&#2487;&#2509;&#2463;&#2503;&#2486;&#2472;&#2494;&#2480;&#2496; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_stationary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_stationary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_stationary">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_stationary">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2540;&#2535;&#2534;&#2537;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2476;&#2509;&#2479;&#2476;&#2489;&#2494;&#2480;&#2509;&#2479;
    &#2470;&#2509;&#2480;&#2476;&#2509;&#2479;&#2494;&#2470;&#2495; &#2453;&#2509;&#2480;&#2527; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_purchase_used_product">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_purchase_used_product">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_purchase_used_product">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_purchase_used_product">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2540;&#2535;&#2534;&#2539;</td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2494;&#2433;&#2458;&#2494;&#2478;&#2494;&#2482; &#2451; &#2454;&#2497;&#2458;&#2480;&#2494;
    &#2479;&#2472;&#2509;&#2468;&#2509;&#2480;&#2494;&#2434;&#2486; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_raw_materials">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_raw_materials">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_raw_materials">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_raw_materials">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2541;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2472;&#2488;&#2494;&#2482;&#2463;&#2503;&#2472;&#2509;&#2488;&#2495;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_consultancy">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_consultancy">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_consultancy">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_consultancy">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2541;&#2535;&#2534;&#2538;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2488;&#2494;&#2480;&#2509;&#2477;&#2503; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_survey">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_survey">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_survey">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_survey">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2541;&#2536;&#2534;&#2540;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2488;&#2478;&#2509;&#2478;&#2494;&#2472;&#2496; &#2477;&#2494;&#2468;&#2494; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_honorarium">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_honorarium">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_honorarium">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_honorarium">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2542;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2478;&#2507;&#2463;&#2480; &#2479;&#2494;&#2472;&#2476;&#2494;&#2489;&#2472;
    &#2478;&#2503;&#2480;&#2494;&#2478;&#2468; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_vehicle_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_vehicle_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_vehicle_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_vehicle_repair">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2542;&#2535;&#2534;&#2536;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2438;&#2488;&#2476;&#2494;&#2476;&#2474;&#2468;&#2509;&#2480; &#2478;&#2503;&#2480;&#2494;&#2478;&#2468;<br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_furniture_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_furniture_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_furniture_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_furniture_repair">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2536;&#2539;&#2542;&#2535;&#2534;&#2537;</td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2478;&#2509;&#2474;&#2495;&#2441;&#2463;&#2494;&#2480; &#2451; &#2437;&#2475;&#2495;&#2488;
    &#2488;&#2480;&#2462;&#2509;&#2460;&#2494;&#2478; &#2478;&#2503;&#2480;&#2494;&#2478;&#2468; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_office_utilities_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_office_utilities_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_office_utilities_repair">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_office_utilities_repair">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; width: 231px; text-align: center;"><span
     style="font-weight: bold;">&#2478;&#2507;&#2463; &#2474;&#2467;&#2509;&#2479; &#2451; &#2488;&#2503;&#2476;&#2494;&#2480; &#2476;&#2509;&#2479;&#2476;&#2489;&#2494;&#2480; </span><br>
          </td>
          <td style="vertical-align: top; width: 214px;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2542;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2476;&#2509;&#2479;&#2527;<br>
          </td>
          <td colspan="5" rowspan="1"
     style="vertical-align: top; width: 214px;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2542;&#2536;&#2535;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2488;&#2495;&#2465;&#2495;/&#2477;&#2509;&#2479;&#2494;&#2463;/&#2463;&#2509;&#2479;&#2494;&#2453;&#2509;&#2488;
          <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_other_service_exp">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_other_service_exp">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_other_service_exp">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_other_service_exp">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2542;&#2536;&#2535;&#2535;&#2534;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2453;&#2480; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_vat">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_vat">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_vat">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_vat">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; width: 231px; font-weight: bold; text-align: center;">&#2478;&#2507;&#2463;
    &#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2476;&#2509;&#2479;&#2527;</td>
          <td style="vertical-align: top; width: 214px;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2537;&#2543;&#2535;&#2535;&#2535;&#2535;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2469;&#2507;&#2453; &#2476;&#2480;&#2494;&#2470;&#2509;&#2470; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_stock_allocation">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_stock_allocation">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_stock_allocation">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_stock_allocation">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; width: 231px; background-color: black; text-align: center; color: white;"><span
     style="font-weight: bold;">&#2441;&#2474;-&#2478;&#2507;&#2463;&#2435; &#2438;&#2476;&#2480;&#2509;&#2468;&#2453; &#2476;&#2509;&#2479;&#2527; (&#2453;)</span><br>
          </td>
          <td
     style="vertical-align: top; width: 214px; background-color: black; color: white; text-align: center;">&#2535;&#2535;&#2543;.&#2534;&#2534;</td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">-<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">&#2536;,&#2535;&#2538;&#2537;.&#2534;&#2534;<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">-<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">&#2536;,&#2536;&#2540;&#2536;.&#2534;&#2534;<br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2538;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2437;-&#2438;&#2480;&#2509;&#2469;&#2495;&#2453; &#2488;&#2478;&#2509;&#2474;&#2470; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_non_financial_asset">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_non_financial_asset">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_non_financial_asset">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_non_financial_asset">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2538;&#2535;&#2535;&#2536;&#2535;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2478;&#2507;&#2463;&#2480;&#2479;&#2494;&#2472; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_vehicle">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_vehicle">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_vehicle">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_vehicle">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2538;&#2535;&#2535;&#2536;&#2536;&#2534;&#2536;</td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2478;&#2509;&#2474;&#2495;&#2441;&#2463;&#2494;&#2480; &#2451;
    &#2479;&#2472;&#2509;&#2468;&#2509;&#2480;&#2494;&#2434;&#2486; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_computer_utilites">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_computer_utilites">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_computer_utilites">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_computer_utilites">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2538;&#2535;&#2535;&#2536;&#2536;&#2534;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2463;&#2503;&#2482;&#2495;&#2479;&#2507;&#2455;&#2494;&#2479;&#2507;&#2455;
    &#2488;&#2480;&#2462;&#2509;&#2460;&#2494;&#2478; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_tel_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_tel_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_tel_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_tel_utilities">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; width: 110px; text-align: center;">&#2538;&#2535;&#2535;&#2536;&#2537;&#2534;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2479;&#2472;&#2509;&#2468;&#2509;&#2480;&#2474;&#2494;&#2468;&#2495; &#2451;
    &#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2488;&#2480;&#2462;&#2509;&#2460;&#2494;&#2478; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_ohter_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_ohter_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_ohter_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_ohter_utilities">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; text-align: center;">&#2538;&#2535;&#2535;&#2536;&#2537;&#2534;&#2538;</td>
          <td style="vertical-align: top; width: 231px;">&#2438;&#2488;&#2476;&#2494;&#2476;&#2474;&#2468;&#2509;&#2480; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_furniture">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_furniture">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_furniture">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_furniture">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; text-align: center;">&#2538;&#2535;&#2535;&#2536;&#2537;&#2535;&#2534;</td>
          <td style="vertical-align: top; width: 231px;">&#2437;&#2475;&#2495;&#2488; &#2488;&#2480;&#2462;&#2509;&#2460;&#2494;&#2478; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_office_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_office_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_office_utilities">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_office_utilities">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td style="vertical-align: top; text-align: center;">&#2538;&#2535;&#2535;&#2537;&#2537;&#2534;&#2535;<br>
          </td>
          <td style="vertical-align: top; width: 231px;">&#2453;&#2478;&#2509;&#2474;&#2495;&#2441;&#2463;&#2494;&#2480;
    &#2488;&#2475;&#2463;&#2451;&#2527;&#2509;&#2479;&#2494;&#2480; <br>
          </td>
          <td style="vertical-align: top; width: 214px;">
            <input style="border: none" class="form-control" type="text" name="gob_software">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="rpa_software">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_rpa_software">
          </td>
          <td style="vertical-align: top;">
            <input style="border: none" class="form-control" type="text" name="others_without_rpa_software">
          </td>
          <td style="vertical-align: top;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; text-align: center; font-weight: bold; background-color: black; color: white; width: 231px;">&#2441;&#2474;-
    &#2478;&#2507;&#2463;&#2435; &#2478;&#2498;&#2482;&#2471;&#2472; &#2476;&#2509;&#2479;&#2527; (&#2454;) <br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; width: 214px;"><br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white;"><br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white;"><br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white;"><br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white;"><br>
          </td>
        </tr>
        <tr>
          <td colspan="2" rowspan="1"
     style="vertical-align: top; background-color: black; color: white; text-align: center; width: 231px;"><span
     style="font-weight: bold;">&#2488;&#2480;&#2509;&#2476;&#2478;&#2507;&#2463; &#2476;&#2509;&#2479;&#2527; (&#2453;+&#2454;)&#2435; </span><br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center; width: 214px;">&#2535;&#2535;&#2543;.&#2534;&#2534;<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">-<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">&#2536;,&#2536;&#2536;&#2539;.&#2534;&#2534;<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">-<br>
          </td>
          <td
     style="vertical-align: top; background-color: black; color: white; text-align: center;">&#2536;,&#2537;&#2538;&#2538;.&#2534;&#2534;<br>
          </td>
        </tr>
      </tbody>
    </table>
    <br>
  </div>
  <div align="center" style="margin-bottom: 10px;">
    <button type="submit" class="btn btn-success">Submit</button>
    <a style="margin-left: 100px;" href="#" class="btn btn-danger">Cancel</a>
  </div>
<?= form_close(); ?>