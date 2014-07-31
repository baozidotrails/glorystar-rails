class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.text :describe
      t.text :introduction
      t.integer :sort

      t.timestamps
    end
  end
end
