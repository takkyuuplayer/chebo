// Generated by CoffeeScript 1.6.2
(function() {
  var filter;

  filter = function() {
    return $('td.mov_info_left').each(function() {
      if ($(this).text().match(/再生時間:0:00/i)) {
        $(this).next().hide();
        return $(this).hide();
      }
    });
  };

  filter();

  document.addEventListener("DOMNodeInserted", function(event) {
    return filter();
  });

}).call(this);
