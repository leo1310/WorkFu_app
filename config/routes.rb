WorkFu::Application.routes.draw do
  devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  devise_scope :user do
  get "sign_in", :to => "devise/sessions#new"
  match "/logout" => "devise/sessions#destroy"

end

  #get "users/new"
  root :to=> "pages#index"
  resource :navigatebars

  match "/update_your_bio", :to=>'navigatebars#update_your_bio'
  match "/refine_your_keywords", :to=>'navigatebars#refine_your_keywords'
  match "/add_other_networks", :to=>'navigatebars#add_other_networks'
  match "/reading_list", :to=>'navigatebars#reading_list'
  match "/preview_your_profille", :to=>'navigatebars#preview_your_profille'

  match "/create_manage", :to=>'pages#create_manage'
  match "/your_profile", :to => 'navigatebars#update_your_bio'
  match "/messages", :to=>'pages#messages'
  match "/settings", :to=>'pages#settings'
  match "/your_applications", :to=>'pages#your_applications'
  match "/update_your_bio", :to=>'pages#update_your_bio'
  match "/opportunities", :to=>'pages#opportunities'  


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
  # match ':controller(/:action(/:id))(.:format)'
end
