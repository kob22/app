# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#grupa_przedmiot_id').parent().hide()
  przedmioty = $('#grupa_przedmiot_id').html()
  $('#grupa_rok_id').change ->
    rok = $('#grupa_rok_id :selected').text()
    escaped_rok = rok.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(przedmioty).filter("optgroup[label='#{escaped_rok}']").html()
    if options
      $('#grupa_przedmiot_id').html(options)
      $('#grupa_przedmiot_id').parent().show()
    else
      $('#grupa_przedmiot_id').empty()
      $('#grupa_przedmiot_id').parent().hide()