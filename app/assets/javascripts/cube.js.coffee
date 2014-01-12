# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "focus", "[data-behaviour~='datepicker']" {
	$(this).datepicker
	format: "dd-mm-yyyy"
	weekstart: 1
	autoclose: true
}