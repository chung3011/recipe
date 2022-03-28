# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"
  get "/search", to: "home#search"
  resources :dishes, only: %i(show)
  resources :categories, only: %i(show)
end
