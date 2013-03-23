filter = ->
  $('td.mov_info_left').each ->
    if $(@).text().match(/再生時間:0:00/i)
      $(@).next().hide()
      $(@).hide()

filter()

document.addEventListener("DOMNodeInserted", (event) ->
  filter()
)
