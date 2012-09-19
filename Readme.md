# jQuery File Upload for Rails

jQuery File Upload is a very well designed cross-browser solution for modern file uploading with pure JavaScript.
The plugin is developed by Sebastian Tschan (@blueimp) and well maintained.

This is a simple gem package for this plugin.

[See the original project page][1] for reference & documentation.

## Changelog

1.0.0.alpha. Core 5.17.2, added jquery-ui-rails dependency.

Now rake task generates assets from official repo and adds dependencies automatically.
That means you can just require jquery.fileupload, no extra requires needed.
UI stuff is removed temporarily.

0.1.2. Fixed CSS that makes SASS 3.2 raise an error on rake assets:precompile

0.1.1. Core 5.11.2, UI 6.9.1, minor gemspec change.

0.1.0. Core 5.9.0,  UI 6.6.2, added readme.

0.0.1. Core 5.5.2,  UI 5.1.1.

## Todo

* Import UI js/css/images in rake task too. Need to fix relative paths to images. See [jquery-ui-rails][2].
* Add example usage in Rails here.

[1]: https://github.com/blueimp/jQuery-File-Upload
[2]: https://github.com/joliss/jquery-ui-rails
