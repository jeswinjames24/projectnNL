class CreateMenus < ActiveRecord::Migration

  def change
    drop_table :menus
    create_table :menus do |t|
      t.string :name
      t.string :url
      t.text :desc
      t.string :ancestry

      t.timestamps
    end
    add_index :menus, :ancestry
  end
end
