# frozen_string_literal: true

module Catalogs
  class Catalog < ApplicationRecord
    validates_presence_of :model, :field, :value
    validates_uniqueness_of :label, :value, scope: %i[model field]
  end
end
