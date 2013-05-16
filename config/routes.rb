EmployeeProject::Application.routes.draw do
  root to: "teams#index"

  resources :employees do
    resources :employee_profiles
  end

  resources :teams
end
