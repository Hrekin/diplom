// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require moment
//= require cocoon
//= require bootstrap-datetimepicker
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-select
//= require_tree .
//= require footable-on-rails
//= require bootstrap/alert
//= require bootstrap/dropdown




// $(document).ready(function(){
// 	$('#datetimepicker9').datetimepicker({
// 		viewMode: 'years'
// 	});
// })

// $("#datetimepicker").click(function(){
//     alert("The paragraph was clicked.");
// }); 



// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
   $("HTML, BODY").animate({ scrollTop: 0 }, 1000);
} 

$(document).on('turbolinks:load', function() {
  $('.selectpicker').selectpicker();
})