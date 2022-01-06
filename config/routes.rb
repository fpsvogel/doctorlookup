Rails.application.routes.draw do
  root 'searches#show', as: :searches_show
  patch 'searches/update'
end
