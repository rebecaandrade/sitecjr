// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.slick
//= require bootstrap-sprockets
//= require home
//= require_tree .

function popUpMembers(id) {
	window.open('/members/' + id, '_member', 'height=550, width=300, status=no, menubar=no, location=no, resizable=no, toolbar=no background-color=#1abc9c');
}
