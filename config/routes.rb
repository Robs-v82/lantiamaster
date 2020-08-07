Rails.application.routes.draw do
  root 'users#landing'
  get 'quarters/ispyv'
  get 'months/reports' => 'months#reports'
  get 'datasets/show'
  get 'datasets/load'
  get 'sources/twitter'
  # resources :users
  resources :states
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'users' => 'users#index'
  get 'password' => 'organizations#password'
  get 'organizations/logout' => 'organizations#logout'
  post 'organizations/login' => 'organizations#login'
  get 'intro' => 'users#intro'
  get 'organizations/main' => 'organizations#main'
  get 'organizations/banxico' => 'organizations#banxico'
  get 'organizations/lantia' => 'organizations#lantia'
  post 'counties/getCounties' => 'counties#getCounties'
  post 'towns/getTowns' => 'towns#getTowns'
  get 'sources/twitter'=>'sources#twitter'
  get 'events/killings'=>'events#killings'
  post 'events/create_killing'=>'events#create_killing'
  get 'events/victims/:killed_count' => 'events#victims'
  post 'events/create_victim' => 'events#create_victims'
  post 'events/create_single_victim' => 'events#create_single_victim'
  get 'organizations/new' => 'organizations#new'
  post 'organizations/create_organization' => 'organizations#create_organization'
  post 'organizations/getDivisions' => 'organizations#getDivisions'
  post 'organizations/getMembers/:organization_id' => 'organizations#getMembers' 
  get 'send_query' => 'events#send_query'
  post 'send_query' => 'events#send_query'
  get 'pageback' => 'events#pageback'
  get 'pageforward' => 'events#pageforward'
  post 'queries/get_months' => 'queries#get_months'
  post 'queries/get_regular_months' => 'queries#get_regular_months'
  post 'queries/get_quarters' => 'queries#get_quarters'
  post 'states/getStates' => 'states#getStates'
  post 'states/getCities' => 'states#getCities'
  get 'queries/files' =>'queries#files'
  get 'queries/send_file/:catalogue/:extension' => 'queries#send_file'
  get 'queries/send_query_file/:extension' => 'queries#send_query_file'
  get 'queries/test_xlsx' => 'queries#test_xlsx', as: "test"
  post 'datasets/load_ensu' 
  post 'months/load_violence_report' 
  post 'months/load_crime_victim_report' 
  post 'months/header_selector/:month' => 'months#header_selector'
  get 'datasets/victims'
end
