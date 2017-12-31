$(document).on('turbolinks:load', function() {
  $('#stock-lookup-form').on('ajax:complete', function(event, data, status){
    $('#stock-results').html(data.responseText)
  })
})