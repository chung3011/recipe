# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"
  resources :dishes, only: %i(show)
end
