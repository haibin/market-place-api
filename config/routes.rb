Rails.application.routes.draw do
  # API definition
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    end
  end
end