#= require bootstrap.min
#= require googleanalytics
#= require_tree .

form_submit = (selector)->
  $(".#{selector} form").on 'submit', (e)->
    e.preventDefault()
    $this = $(this)
    $.post($this.attr('action'), $this.serialize()).done ->
      $(".#{selector} .alert-success").clone().appendTo(".#{selector}").show()
      $this.find('.form-control').val('')
    .fail ->
      $(".#{selector} .alert-danger").clone().appendTo(".#{selector}").show()

form_submit('contact-us')
>>>>>>> 1e9fd5efb36726a8e84807f0f49850613e065598
