$(document).on('turbolinks:load', function() {
  $('#friend-lookup-form').on('ajax:complete', function(event, data, status){
    $('#friend-results').html(data.responseText)
  })
})