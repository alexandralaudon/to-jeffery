Rails.application.routes.draw do

  root 'welcome#index'

  get 'add_message', to: 'messages#new'
  post 'add_message', to: 'messages#create'

end
