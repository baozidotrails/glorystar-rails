class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :url
      t.integer :department_id

      t.timestamps
    end
  end
end
