# frozen_string_literal: true

module Catalogs
  class Catalog < ApplicationRecord
    validates_presence_of :model, :field, :label, :value
  end
end
