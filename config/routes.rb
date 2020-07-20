Rails.application.routes.draw do
  get 'swagger/show'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "swagger#show"
end
