useChebo = ->
  scripts = ["//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js",
             "//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min.js",
             "//cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.10/backbone-min.js"
            ]

  Chebo = {}
  len = 0
  createChebo = =>
    len++
    if scripts.length == len
      Chebo.jQuery = jQuery.noConflict(true)
      Chebo.Backbone = Backbone.noConflict()
      Chebo.underscore = _.noConflict()

  for src in scripts
    script = document.createElement("script")
    script.src = src
    document.body.appendChild(script)
    script.onload = createChebo

  @withChebo = (func) ->
    $ = Chebo.jQuery
    jQuery = Chebo.jQuery
    _ = Chebo.underscore
    Backbone = Chebo.Backbone
    func = func.toString()
    eval "(#{func})()"


script = document.createElement("script")
src = useChebo.toString()
script.appendChild(document.createTextNode("(#{src})()"))
document.body.appendChild(script)
