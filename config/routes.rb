Rails.application.routes.draw do
  resources :posts do
    collection do
      get :ajaxcall
    end
  end
  
root "posts#index"
end
