Rails.application.routes.draw do

  resources :students
  resources :searches

  get "/students/search/:search_id",
    to: "students#index",
    as: "search_students"

  root :to => 'application#index'

end
