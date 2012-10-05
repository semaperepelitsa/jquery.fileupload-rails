Demo::Application.routes.draw do
  get '/' => 'application#basic'
  post '/' => 'application#create'

  match ':action', controller: "application"
end
