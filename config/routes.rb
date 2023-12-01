Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources:mangas do
    resources :likes, only: [:create, :destroy]
end

root'mangas#top'
end



