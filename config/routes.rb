Rails.application.routes.draw do
  get 'question/index'
  root to: "question#index"
end
