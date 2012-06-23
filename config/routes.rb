Wedding::Application.routes.draw do
  root to: 'pages#index'

  get 'about-us',  to: 'pages#us',      as: :us
  get 'our-party', to: 'pages#party',   as: :party
  get 'location',  to: 'pages#location'
  get 'registry',  to: 'pages#registry'
  get 'travel',    to: 'pages#travel'
end
