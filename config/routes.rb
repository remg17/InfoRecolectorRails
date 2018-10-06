Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :stops
      resources :trucks
      resources :type_trucks
      resources :route_stops
      resources :route_schedules
      resources :recycling_points
      resources :routes
      resources :weeks
    end
  end
end
