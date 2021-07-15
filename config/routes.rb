Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
  resources :movies, only: :index
end


        #           Prefix Verb   URI Pattern                                                                              Controller#Action
        #    list_bookmarks POST   /lists/:list_id/bookmarks(.:format)                                                      bookmarks#create
        # new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format)                                                  bookmarks#new                                                    movies#show
        #             lists GET    /lists(.:format)                                                                         lists#index
        #                   POST   /lists(.:format)                                                                         lists#create
        #          new_list GET    /lists/new(.:format)                                                                     lists#new
        #              list GET    /lists/:id(.:format)                                                                     lists#show
        #          bookmark DELETE /bookmarks/:id(.:format)                                                                 bookmarks#destroy
        #            movies GET    /movies(.:format)                                                                        movies#index