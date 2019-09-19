# frozen_string_literal: true

Rails.application.routes.draw do
  mount Catalogs::Engine => "/catalogs"
end
