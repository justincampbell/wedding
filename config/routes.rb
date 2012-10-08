Wedding::Application.routes.draw do
  root to: 'pages#index'

  get 'party',    to: 'pages#party'
  get 'venue',    to: 'pages#venue'
  get 'registry', to: 'pages#registry'
  get 'travel',   to: 'pages#travel'

  get 'rsvp', to: 'rsvp#index'
  put 'rsvp', to: 'rsvp#update', as: :rsvp_update
  get 'rsvp/sign_in', to: 'rsvp#sign_in', as: :sign_in
  post 'rsvp/sign_in', to: 'rsvp#sign_in', as: :submit_sign_in
  get 'rsvp/sign_out', to: 'rsvp#sign_out', as: :sign_out
end
