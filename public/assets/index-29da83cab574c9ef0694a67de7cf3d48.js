function init_map(){var e={center:new google.maps.LatLng(39.8309293,-77.2310955),zoom:18,panControl:!1,mapTypeId:google.maps.MapTypeId.HYBRID};map=new google.maps.Map(document.getElementById("map_canvas"),e)}function init_calendar(){$("#calendar").fullCalendar({handleWindowResize:!0,height:600,header:{left:"prev",center:"title",right:"today,next"},eventSources:[{url:"/events",color:"white",textColor:"black",ignoreTimezone:!1}]})}$(document).ready(function(){init_calendar()});