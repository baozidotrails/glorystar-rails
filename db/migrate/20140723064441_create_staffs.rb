class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :position
      t.string :title
      t.string :email
      t.string :phone
      t.text :blessing
      t.text :dictum
      t.boolean :quit
      t.string :photo

      t.timestamps
    end
  end
end
