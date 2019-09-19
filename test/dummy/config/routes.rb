Rails.application.routes.draw do
  mount Catalogs::Engine => "/catalogs"
end
