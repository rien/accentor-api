# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                    albums GET    /albums(.:format)                                                                        albums#index
#                           POST   /albums(.:format)                                                                        albums#create
#                     album GET    /albums/:id(.:format)                                                                    albums#show
#                           PATCH  /albums/:id(.:format)                                                                    albums#update
#                           PUT    /albums/:id(.:format)                                                                    albums#update
#                           DELETE /albums/:id(.:format)                                                                    albums#destroy
#                   artists GET    /artists(.:format)                                                                       artists#index
#                           POST   /artists(.:format)                                                                       artists#create
#                    artist GET    /artists/:id(.:format)                                                                   artists#show
#                           PATCH  /artists/:id(.:format)                                                                   artists#update
#                           PUT    /artists/:id(.:format)                                                                   artists#update
#                           DELETE /artists/:id(.:format)                                                                   artists#destroy
#               auth_tokens GET    /auth_tokens(.:format)                                                                   auth_tokens#index
#                           POST   /auth_tokens(.:format)                                                                   auth_tokens#create
#                auth_token GET    /auth_tokens/:id(.:format)                                                               auth_tokens#show
#                           DELETE /auth_tokens/:id(.:format)                                                               auth_tokens#destroy
#                    codecs GET    /codecs(.:format)                                                                        codecs#index
#                           POST   /codecs(.:format)                                                                        codecs#create
#                     codec GET    /codecs/:id(.:format)                                                                    codecs#show
#                           PATCH  /codecs/:id(.:format)                                                                    codecs#update
#                           PUT    /codecs/:id(.:format)                                                                    codecs#update
#                           DELETE /codecs/:id(.:format)                                                                    codecs#destroy
#         codec_conversions GET    /codec_conversions(.:format)                                                             codec_conversions#index
#                           POST   /codec_conversions(.:format)                                                             codec_conversions#create
#          codec_conversion GET    /codec_conversions/:id(.:format)                                                         codec_conversions#show
#                           PATCH  /codec_conversions/:id(.:format)                                                         codec_conversions#update
#                           PUT    /codec_conversions/:id(.:format)                                                         codec_conversions#update
#                           DELETE /codec_conversions/:id(.:format)                                                         codec_conversions#destroy
#           cover_filenames GET    /cover_filenames(.:format)                                                               cover_filenames#index
#                           POST   /cover_filenames(.:format)                                                               cover_filenames#create
#            cover_filename GET    /cover_filenames/:id(.:format)                                                           cover_filenames#show
#                           DELETE /cover_filenames/:id(.:format)                                                           cover_filenames#destroy
#               image_types GET    /image_types(.:format)                                                                   image_types#index
#                           POST   /image_types(.:format)                                                                   image_types#create
#                image_type GET    /image_types/:id(.:format)                                                               image_types#show
#                           PATCH  /image_types/:id(.:format)                                                               image_types#update
#                           PUT    /image_types/:id(.:format)                                                               image_types#update
#                           DELETE /image_types/:id(.:format)                                                               image_types#destroy
#                 locations GET    /locations(.:format)                                                                     locations#index
#                           POST   /locations(.:format)                                                                     locations#create
#                  location GET    /locations/:id(.:format)                                                                 locations#show
#                           DELETE /locations/:id(.:format)                                                                 locations#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :albums
  resources :artists
  resources :auth_tokens, only: %i[index show create destroy]
  resources :codecs
  resources :codec_conversions
  resources :cover_filenames, only: %i[index show create destroy]
  resources :image_types
  resources :locations, only: %i[index show create destroy]
  resources :users
end
