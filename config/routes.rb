Employees::Application.routes.draw do

#    get "user_sessions/new"
#    get "user_sessions/create"
#    get "users/index"
#    get "users/show"
#    get "users/login_required"
#
#    get "application/current_user_session"
      get "User/new"

  root :to=> 'User#new'
  get"Employee/new"
  get"Employee/list"
  get"Employee/show"
   get"Employee/update"
   get"Employee/edit"
    get"Employee/delete"
  root :to=>'Employee#new'
  root :to=>'Employee#list'
  root :to=>'Employee#show'
  root :to=>'Employee#update'
  root :to=>'Employee#edit'
  root :to=>'Employee#delete'
  get "User/logg"
  root :to=> 'User#logg'
  get"Department/list"
  root :to=>'Department#list'
  get"Department/new"
  root :to=>'Department#new'
   get"Department/show"
  root :to=>'Department#show'
get"Department/update"
  root :to=>'Department#update'
  get"Department/edit"
  root :to=>'Department#edit'
  get"Department/delete"
  root :to=>'Department#delete'


   get 'user/new', to: redirect( :controller=>'session', :action => 'login_attempt')
     get "session/login"
  get "session/logout"
    root :to=> 'session#login'
 get"Designation/new"
  root :to=>'Designation#new'
  get"Designation/list"
  root :to=>'Designation#list'
  get"Designation/show"
  root :to=>'Designation#show'
    get"Designation/update"
  root :to=>'Designation#update'
    get"Designation/edit"
  root :to=>'Designation#edit'
      get"Designation/delete"
  root :to=>'Designation#delete'
  #root :to=> 'user#create'

match ':controller(/:action(/:id))(.:format)'



  #match "signup", :to => "users#new"
match "login", :to => "sessions#login"
match "logout", :to => "sessions#logout"
match "home", :to => "sessions#home"
match "profile", :to => "sessions#profile"
match "setting", :to => "sessions#setting"









  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'

#  root :to => 'user_sessions#new'
#  root :to => 'user_sessions#create'
#  root :to => 'users#index'
#  root :to => 'users#show'
#root :to => 'users#login_required'
#root :to => 'application#current_user_session'
end
