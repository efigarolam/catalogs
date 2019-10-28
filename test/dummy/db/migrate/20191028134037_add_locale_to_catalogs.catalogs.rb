# This migration comes from catalogs (originally 20191028133635)
class AddLocaleToCatalogs < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs_catalogs, :locale, :string
  end
end
