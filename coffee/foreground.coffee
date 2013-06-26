scripts = ["//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js",
           "//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min.js",
           "//cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.10/backbone-min.js"
          ]

_.each(scripts, (src) ->
  script = document.createElement("script")
  script.src = src
  document.body.appendChild(script)
)

createChebo = ->
  Chebo = if _.isUndefined(Chebo) then {} else Chebo
  Chebo.jQuery = jQuery.noConflict(true)
  Chebo.Backbone = Backbone.noConflict()
  Chebo.underscore = _.noConflict()

  @Chebo = Chebo

script = document.createElement("script")
script.appendChild(document.createTextNode("var createChebo = " + createChebo.toString()))
document.body.appendChild(script)
