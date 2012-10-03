Wedding::Application.routes.draw do
  root to: 'pages#index'

  get 'party',    to: 'pages#party'
  get 'venue',    to: 'pages#venue'
  get 'registry', to: 'pages#registry'
  get 'travel',   to: 'pages#travel'

end
