Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #shortcut to create all the resources automatically
  resources :blog_posts do
    #adding module will let us add this in the blog_posts controller and it should only apply to blog_posts
    resource :cover_image, only: [:destroy], module: :blog_posts
  end

  # get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  # get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  # patch "/blog_posts/:id", to: "blog_posts#update"
  # delete "/blog_posts/:id", to: "blog_posts#destroy"
  # get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  # post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  # Defines the root path route ("/")
  root "blog_posts#index"
end
