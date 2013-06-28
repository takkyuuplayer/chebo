chebo
=====

chrome extension bootstrap

for development
-----

### Pre-requirements
* [nodejs](http://nodejs.org/)
* [npm](https://npmjs.org/)

### Quick Start

```bash
$ git clone https://github.com/takkyuuplayer/chebo.git
$ cd chebo
$ npm install
$ ./node_modules/coffee-script/bin/coffee -o src/js/ -wc coffee/
```

Edit coffee script. In default, you can use 4 vendor libraries.
* [jQuery](http://jquery.com/)
* [underscore.js](http://underscorejs.org/)
* [Backbone.js](http://backbonejs.org/)
* [Backbone.localStorage](https://github.com/jeromegn/Backbone.localStorage)

chebo.crx
-----
Once you install chebo.crx as Chrome extension, you can use above 4 libraries in console.

```javascript
console.log($); // $ is object original site object
withChebo(function() {
  console.log($); // $ is jQuery
})
console.log($); // $ is object original site object
```
