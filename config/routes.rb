Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/vegetables" => "vegetables#index"
  get "/vegetables/new" => "vegetables#new"
  post "vegetables" => "vegetables#create"
  get "/vegetables/:id" => "vegetables#show"
  get "/vegetables/:id/edit" => "vegetables#edit"
  patch "/vegetables/:id" => "vegetables#update"
  delete "/vegetables/:id" => "vegetables#destroy"
end
