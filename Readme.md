# jQuery File Upload for Rails

[jQuery File Upload][1] is a cross-browser javascript library for asynchronus Flash-free file uploading
by Sebastian Tschan (@blueimp). This gem packages it for the asset pipeline in Rails.

You should see the original project page for reference & documentation.
There are no instructions here on how to use the library itself.

## Usage

Add a line to your Gemfile.

    gem 'jquery.fileupload-rails'

Now you can require the javascript library in application.js:

    //= require jquery.fileupload

Included (no need to require):

* jQuery Iframe Transport for IE support.
* jQuery UI widget from [jquery-ui-rails][2]

Example Rails application can be found in "demo" directory.

## Upgrading 0.1 to 1.0

You can remove all dependencies of the plugin from you manifest. Before:

    //= require jquery.ui
    //= require jquery.iframe-transport
    //= require jquery.fileupload

After:

    //= require jquery.fileupload

If you downloaded jquery.ui assets into your project, delete them and use [jquery-ui-rails][2] gem instead.

## Changelog

1.11.0. Core 5.42.0.

1.10.1. Core 5.41.1.

1.10.0. Compatibility with new jQuery UI Rails 5.0 (jQuery UI 1.11).

1.9.0. Core 5.41.0.

1.8.1. Core 5.40.1.

1.8.0. Core 5.40.0, updated demo app.

1.7.0. Core 5.34.0.

1.6.1. Core 5.32.5, jQuery UI Rails 4 compatibility.

1.6.0. Core 5.32.2.

1.5.1. Core 5.31.

1.5.0. Core 5.30.

1.4.1. Core 5.28.8.

1.4.0. Core 5.28.4.

1.3.0. Core 5.26.

1.2.0. Core 5.21.1, demo instructions.

1.1.1. Core 5.19.4, jQuery UI 1.9, added licensing info.

1.0.0. Core 5.18.

Now rake task generates assets from official repo and adds dependencies automatically.
That means you can just require jquery.fileupload, no extra requires needed.

0.1.2. Fixed CSS that makes SASS 3.2 raise an error on rake assets:precompile

0.1.1. Core 5.11.2, UI 6.9.1, minor gemspec change.

0.1.0. Core 5.9.0,  UI 6.6.2, added readme.

0.0.1. Core 5.5.2,  UI 5.1.1.

[1]: https://github.com/blueimp/jQuery-File-Upload
[2]: https://github.com/joliss/jquery-ui-rails

## License
jQuery File Upload as well as this gem are released under the [MIT license](http://www.opensource.org/licenses/MIT).
