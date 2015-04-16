Rails.application.routes.draw do

  root 'welcome#index'

  get 'add-message', to: 'messages#new'

end
