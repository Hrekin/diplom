# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

loader_f = ->
  $('.input-group-addon').datetimepicker
    viewMode: 'years'


app_ready_f = ->
  loader_f()
$(document).ready app_ready_f
$(document).on 'page:load', app_ready_f




