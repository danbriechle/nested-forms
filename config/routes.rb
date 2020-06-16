Rails.application.routes.draw do
  resources :drums do [:index, :show, :new, :create, :destroy]
  end

  get "/", to: "drums#new"
end
