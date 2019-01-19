Rails.application.routes.draw do

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
  namespace :admin do
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/show'
  end
  get 'projects/index'
  get 'projects/show'
  get 'posts/index'
  get 'posts/show'
  root 'pages#index', as: 'index'

  get 'home' => 'pages#home', as: 'home'

  get 'projects' => 'pages#projects', as: 'projects'

  get 'about' => 'pages#about', as: 'about'

  get 'contact' => 'pages#contact', as: 'contact'

  get 'thanks' => 'pages#thanks', as: 'thanks'

end
