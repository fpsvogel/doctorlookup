Rails.application.routes.draw do
  root  'searches#show',    as: :searches_show
  post  'searches/create',  to: "searches#create"
  patch 'searches/create',  to: "searches#show_more"
end
