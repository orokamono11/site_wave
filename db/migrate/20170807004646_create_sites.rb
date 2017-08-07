class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
        
        t.string :title
        t.string :address
        t.text   :introduction

      t.timestamps
    end
  end
end
