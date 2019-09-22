# This migration comes from catalogs (originally 20190922014546)
class AddInternationalizableToCatalogs < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs_catalogs, :internationalizable, :boolean, default: true
  end
end
