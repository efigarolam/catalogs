# frozen_string_literal: true

module Catalogs
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    desc "Configure Application to use Catalogs Engine"

    def include_engine_helper_methods
      code = <<-RUBY
  helper Catalogs::Engine.helpers
      RUBY

      inject_into_file(
        "app/controllers/application_controller.rb",
        after: "class ApplicationController < ActionController::Base\n"
      ) do
        code
      end
    end

    def copy_locale_file
      copy_file "catalogs.en.yml", "config/locales/catalogs.en.yml"
    end
  end
end
