Rails.application.routes.draw do
  namespace :admin do
    root "static_pages#home"
  end
  root "static_pages#home"
end
