# frozen_string_literal: true

module Catalogs
  module CatalogsHelper
    def catalog_options_for_select(model, field)
      return if model.nil? || field.nil?
      memoized_variable_name = "@_options_for_#{model}_#{field}_#{I18n.locale}"

      if instance_variable_defined?(memoized_variable_name)
        return instance_variable_get(memoized_variable_name)
      end

      options = Catalogs::Catalog.where(model: model, field: field, active: true).pluck(:label, :value, :internationalizable)

      internationalized_options = options.map do |option|
        if option[0].nil?
          option[0] = option[1]
        end

        return [option[0], option[1]] unless option[2]

        [
          I18n.t("catalogs.#{model}.#{field}.labels.#{option[0]}", default: option[0]),
          I18n.t("catalogs.#{model}.#{field}.values.#{option[1]}", default: option[1])
        ]
      end

      instance_variable_set(
        "@_options_for_#{model}_#{field}_#{I18n.locale}",
        internationalized_options
      )
    end
  end
end
