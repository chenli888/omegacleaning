// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require fullcalendar

$(document).ready(function() {

    // page is now ready, initialize the calendar...
	var url = window.location.pathname;
	var id = url.substring(url.lastIndexOf('/')+1); 
    $('#calendar').fullCalendar({
    		eventSources: [{
    			url: '/companies/'+id
    		}],
    		eventRender: function(event, element) {
    			element.find('.fc-event-title').text('lichen');
    		}
        // put your options and callbacks here
    });

});