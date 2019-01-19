Rails.application.routes.draw do

  namespace :admin do
    get 'projects/new'
    get 'projects/create'
    get 'projects/edit'
    get 'projects/update'
    get 'projects/destory'
    get 'projects/index'
    get 'projects/show'
  end
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
  end

  namespace :admin do
    get 'users/new'
    get 'users/create'
    get 'users/edit'
    get 'users/update'
    get 'users/destroy'
    get 'users/index'
    get 'users/show'
  end

  namespace :admin do
    get 'categories/new'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/update'
    get 'categories/destroy'
    get 'categories/index'
    get 'categories/show'
  end

  get 'categories/show'

  get 'projects/index'

  get 'projects/show'

  root 'pages#index', as: 'index'

  get 'home' => 'pages#home', as: 'home'

  get 'projects' => 'pages#projects', as: 'projects'

  get 'about' => 'pages#about', as: 'about'

  get 'contact' => 'pages#contact', as: 'contact'

  get 'thanks' => 'pages#thanks', as: 'thanks'

  resources :projects, :categories

  namespace :admin do
    resources :projects, :categories
  end

end
