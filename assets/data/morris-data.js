$(function() {
   /* Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Download Sales",
            value: 12
        }, {
            label: "In-Store Sales",
            value: 30
        }, {
            label: "Mail-Order Sales",
            value: 20
        }],
        resize: true
    });*/

    if( $('#morris-bar-chart').length !== 0 ){
        var arrColors = ['#6D78AD','#51CDA0','#DF7970','#4C9CA0'];
        Morris.Bar({
            element: 'morris-bar-chart',
            data: [{
                y: 'DNCC',
                a: 100
            }, {
                y: 'DDM',
                a: 19
            }, {
                y: 'RAJUK',
                a: 61
            }, {
                y: 'PCMU',
                a: 80
            }],
            xkey: 'y',
            ykeys: 'a',
            labels: ['Expenditure','Agency'],
            units: '%',
            hideHover: 'auto',
            resize: true,
            barColors: function (row, series, type) {
                        return arrColors[row.x];
                    }
        });
    }

    if( $('#morris-bar-chart2').length !== 0 ){
        var arrColors = ['#6D78AD','#51CDA0','#DF7970','#4C9CA0'];
        Morris.Bar({
            element: 'morris-bar-chart2',
            data: [{
                y: 'DDM',
                a: 13.35
            }, {
                y: 'RAJUK',
                a: 16.41
            }, {
                y: 'DNCC',
                a: 63.25
            }, {
                y: 'PCMU',
                a: 6.99
            }],
            xkey: 'y',
            ykeys: 'a',
            labels: ['Expenditure','Agency'],
            units: '%',
            hideHover: 'auto',
            resize: true,
            barColors: function (row, series, type) {
                        return arrColors[row.x];
                    }
        });
    }

    if( $('#morris-bar-chart3').length !== 0 ){
        var arrColors = ['#6D78AD','#51CDA0','#DF7970','#4C9CA0'];
        Morris.Bar({
            element: 'morris-bar-chart3',
            data: [{
                y: 'DNCC',
                a: 98.70
            }, {
                y: 'RAJUK',
                a: 0.28
            }, {
                y: 'DDM',
                a: 0.70
            }, {
                y: 'PCMU',
                a: 0.31
            }],
            xkey: 'y',
            ykeys: 'a',
            labels: ['Expenditure','Agency'],
            units: '%',
            hideHover: 'auto',
            resize: true,
            barColors: function (row, series, type) {
                        return arrColors[row.x];
                    }
        });
    }

    if( $('#progress-bar-chart').length !== 0 ){
        var arrColors = ['#6D78AD','#51CDA0','#DF7970','#4C9CA0'];
        Morris.Bar({
            element: 'progress-bar-chart',
            data: [{
                y: 'DNCC',
                a: 18570.56,
                b: 10084.01
            }, {
                y: 'DDM',
                a: 1551.16,
                b: 29
            }, {
                y: 'RAJUK',
                a: 702.6,
                b: 71.42
            }, {
                y: 'PCMU',
                a: 381.1,
                b: 32.18
            }],
            xkey: 'y',
            ykeys: ['a','b'],
            labels: ['Upto June, 2018','Upto Sep of FY 2018-19'],
            hideHover: 'auto',
            resize: true

        });
    }
    
});
