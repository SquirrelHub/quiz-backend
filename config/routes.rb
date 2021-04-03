Rails.application.routes.draw do
  resources :quizzes do
    resource :questions
  end
  get 'github', to: redirect("https://github.com/SquirrelHub/quiz-backend")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
