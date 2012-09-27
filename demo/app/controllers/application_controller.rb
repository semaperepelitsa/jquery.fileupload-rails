class ApplicationController < ActionController::Base
  protect_from_forgery

  def create
    render layout: false, content_type: "text/html"
  end
end
