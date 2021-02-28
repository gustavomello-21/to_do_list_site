Rails.application.routes.draw do
<<<<<<< HEAD
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/show'
  get 'tasks/edit'
  get 'tasks/delete'
=======
  resources :tasks
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
