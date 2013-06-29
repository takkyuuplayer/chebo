// Generated by CoffeeScript 1.6.3
(function() {
  var script, src, useChebo;

  useChebo = function() {
    var loads, script;
    loads = function() {
      require.config({
        paths: {
          jquery: "//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min",
          underscore: "//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min",
          backbone: "//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min",
          localstorage: "//cdnjs.cloudflare.com/ajax/libs/backbone-localstorage.js/1.1.0/backbone.localStorage-min"
        },
        shim: {
          backbone: ['jquery', 'underscore'],
          localstorage: ['backbone']
        }
      });
      return require(["jquery", "underscore", "backbone", "localstorage"], function() {
        var Chebo;
        Chebo = {};
        Chebo.jQuery = jQuery.noConflict(true);
        Chebo.Backbone = Backbone.noConflict();
        Chebo.underscore = _.noConflict();
        return this.Chebo = Chebo;
      });
    };
    script = document.createElement("script");
    script.src = "//cdnjs.cloudflare.com/ajax/libs/require.js/2.1.6/require.min.js";
    document.body.appendChild(script);
    script.onload = loads;
    return this.withChebo = function(func) {
      var $, Backbone, jQuery, _;
      $ = Chebo.jQuery;
      jQuery = Chebo.jQuery;
      _ = Chebo.underscore;
      Backbone = Chebo.Backbone;
      func = func.toString();
      return eval("(" + func + ")()");
    };
  };

  script = document.createElement("script");

  src = useChebo.toString();

  script.appendChild(document.createTextNode("(" + src + ")()"));

  document.body.appendChild(script);

}).call(this);
