# jQuery File Upload for Rails

[jQuery File Upload][1] is a cross-browser javascript library for asynchronus Flash-free file uploading
by Sebastian Tschan (@blueimp). This gem packages it for the asset pipeline in Rails.

See the original project page for reference & documentation.

## Usage

Add the following to your Gemfile.

    group :assets do
      gem 'jquery.fileupload-rails'
    end

Then you can require the javascript library in application.js:

    //= require jquery.fileupload

Included (no need to require):

* jQuery Iframe Transport for IE support.
* jQuery UI widget from [jquery-ui-rails][2]

## Changelog

1.0.0.alpha. Core 5.17.2, added jquery-ui-rails dependency.

Now rake task generates assets from official repo and adds dependencies automatically.
That means you can just require jquery.fileupload, no extra requires needed.
UI stuff is removed temporarily.

0.1.2. Fixed CSS that makes SASS 3.2 raise an error on rake assets:precompile

0.1.1. Core 5.11.2, UI 6.9.1, minor gemspec change.

0.1.0. Core 5.9.0,  UI 6.6.2, added readme.

0.0.1. Core 5.5.2,  UI 5.1.1.

[1]: https://github.com/blueimp/jQuery-File-Upload
[2]: https://github.com/joliss/jquery-ui-rails
