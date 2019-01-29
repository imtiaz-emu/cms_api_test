Rails.application.routes.draw do
  scope '/api' do
    resources :contents
  end
end
