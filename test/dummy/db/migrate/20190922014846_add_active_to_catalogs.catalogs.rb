# This migration comes from catalogs (originally 20190922014006)
class AddActiveToCatalogs < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs_catalogs, :active, :boolean, default: true
  end
end
