EmployeeProject::Application.routes.draw do
  root to: "teams#index"

  resources :employees
  resources :employee_profiles

  resources :teams
end
