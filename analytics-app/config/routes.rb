Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "enable_analytics", to: "analytics#enable", as: :enable_analytics
end
