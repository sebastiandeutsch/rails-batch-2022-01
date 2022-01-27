Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  # get 'articles' => 'articles#index'
  # get 'articles/new' => 'articles#new'
  # post 'articles' => 'articles#create'
  # get 'articles/:id/edit' => 'articles#edit'
  # put 'articles/:id'
  # delete 'articles/:id'
end
