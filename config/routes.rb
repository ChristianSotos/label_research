Rails.application.routes.draw do
  get 'login_popup' => 'session#login_popup'
  get 'login_popup_header' => 'session#login_popup_header'
  post 'login' => 'session#login'
  get 'logout' => 'session#logout'


  get 'profile' => 'users#profile'
  post 'register' => 'users#register'
  post 'users/update' => 'users#update'
  get 'users/upload_pic' => 'users#upload_pic'
  patch 'users/update_pic' => 'users#update_pic'
  get 'users/sm_popup' => 'users#sm_popup'
  post 'users/update_sm' => 'users#update_sm'
  get 'users/show/:id' => 'users#show'

  get 'songs/index'
  post 'songs/top_search' => 'songs#top_search'
  post 'songs/user_pagination' => 'songs#user_pagination'
  get 'qty' => 'songs#qty'
  get 'audio_upload' => 'songs#audio_upload'
  post 'songs/create' => 'songs#create'
  get 'songs/new/:qty' => 'songs#new'
  post 'audio_submit/:id' => 'songs#audio_submit'
  get 'songs/show/:id' => 'songs#show'
  post 'songs/update/:id' => 'songs#update'
  get '/songs/upload_audio/:id' => 'songs#upload_audio'
  patch 'songs/update_audio/:id' => 'songs#update_audio'
  get '/songs/play_count/:id' => 'songs#play_count'
  get 'songs/report_partial/:id' => 'songs#report_partial'
  get 'songs/report_full/:id' => 'songs#report_full'

  get 'admin' => 'admin#index'
  post 'reference/new' => 'admin#new_reference'
  post '/review/add/:id' => 'admin#add_review'
  get 'admin/review_song/:id' => 'admin#review_song'
  get 'reference/delete/:song_id/:ref_id' => 'admin#del_ref'
  get 'reference/add/:song_id/:ref_id' => 'admin#add_reference'

  get 'new_submit' => 'session#new_submit'
  get 'register' => 'session#register'

  root 'session#index'
  get 'about' => 'session#about'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
