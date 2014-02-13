//function to calculate window height
function init_map() {
    var mapOptions = {
        center: new google.maps.LatLng(39.8309293 , -77.2310955),
        zoom: 18,
        panControl: false,
        mapTypeId: google.maps.MapTypeId.HYBRID
    };
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

}

function init_calendar(){
    $('#calendar').fullCalendar({
        handleWindowResize: true,
        height: 600,
        header: {
            left:   'prev',
            center: 'title',
            right:  'today,next'
        },
        eventSources: [{
            url: '/events',
            color: 'white',
            textColor: 'black',
            ignoreTimezone: false
        }]
    });

}


$(document).ready(function(){

    /*$('img').popover({
        trigger: "hover"
    });*/

    $('form#sign_in').bind('ajax:success', function(e, data, status, xhr) {
        console.log(data);
        if(data.success) {
            $('#user-login-box').html(data.content);
        } else {
            $('#user-login-box').prepend(data.errors.join('<br />'));
        }
    });


    init_calendar();
    //first find the fullCalendar Event

    //init_map();
/*
    if($('.carousel').length){
        $(".carousel").carousel({
           interval : 2000
        });
    }*/



});

