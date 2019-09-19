# frozen_string_literal: true

require "test_helper"

module Catalogs
  class CatalogTest < ActiveSupport::TestCase
    def test_it_creates_a_catalog
      @catalog = Catalogs::Catalog.new(
        model: "language",
        field: "level",
        label: "beginner",
        value: "beginner"
      )

      assert @catalog.save
    end

    def test_it_fails_to_create_a_catalog_with_incomplete_params
      @catalog = Catalogs::Catalog.new(
        label: "beginner",
        value: "beginner"
      )

      assert_not @catalog.save
      assert_not @catalog.valid?
    end

    def test_it_fails_to_create_a_catalog_with_existing_label_value
      @catalog = Catalogs::Catalog.new(
        model: "skill",
        field: "level",
        label: "beginner",
        value: "beginner"
      )

      assert_not @catalog.save
      assert_not @catalog.valid?
    end
  end
end
