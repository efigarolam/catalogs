class AddLocaleToCatalogs < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs_catalogs, :locale, :string
  end
end
