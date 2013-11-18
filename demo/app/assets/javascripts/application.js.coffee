#= require jquery
#= require jquery_ujs
#= require jquery.fileupload

$ ->
  $('#basic').fileupload
    done: (e, data)->
      console.log "Done", data.result
      $("body").append(data.result)
