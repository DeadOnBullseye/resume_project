Rails.application.routes.draw do

  root 'pages#index', as: 'index'

  get 'home' => 'pages#home', as: 'home'

  get 'projects' => 'pages#projects', as: 'projects'

  get 'about' => 'pages#about', as: 'about'

  get 'contact' => 'pages#contact', as: 'contact'

  get 'thanks' => 'pages#thanks', as: 'thanks'

end
