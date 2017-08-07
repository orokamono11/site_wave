class AddColumnSites < ActiveRecord::Migration[5.1]
  def change
    add_column :sites, :user_id, :integer
  end
end
