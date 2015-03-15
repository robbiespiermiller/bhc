$('.quiz > form > button').on 'click', (e)->
  e.preventDefault()
  $answered_questions = $('input:radio:checked')
  $questions = $('input:radio')
  console.log $questions.length
  console.log $answered_questions.length

  score = $answered_questions.map (_, question)->
    question.value
  .get().reduceRight (sum, value)->
    sum + parseInt(value)
  , 0
  console.log 'your score is:',score
