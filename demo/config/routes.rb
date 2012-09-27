Demo::Application.routes.draw do
  get '/' => 'application#basic'
  post '/' => 'application#create'
end
