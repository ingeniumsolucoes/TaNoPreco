TaNoPreco::Application.routes.draw do 
  namespace :admin do
  resources :lojas
  resources :marca_produtos
  resources :sub_categoria_produtos
  resources :categoria_produtos
  resources :classe_produtos
  end
end
