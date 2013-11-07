Demo::Application.routes.draw do
  get '/' => 'application#basic'
  post '/' => 'application#create'

  get ':action', controller: "application"
end
