class AddInternationalizableToCatalogs < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs_catalogs, :internationalizable, :boolean, default: true
  end
end
