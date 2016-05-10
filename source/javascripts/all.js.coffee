#= require bootstrap.min
#= require googleanalytics
#= require googleremarketing
#= require_self

form_submit = (selector)->
  $(".#{selector} form").on 'submit', (e)->
    e.preventDefault()
    $this = $(this)
    $.post($this.attr('action'), $this.serialize()).done ->
      $(".#{selector} .alert-success").clone().appendTo(".#{selector}").show()
      $this.find('.form-control').not('.static-field').val('')
    .fail ->
      $(".#{selector} .alert-danger").clone().appendTo(".#{selector}").show()

form_submit('contact-us')
form_submit('contact-rsvp')
