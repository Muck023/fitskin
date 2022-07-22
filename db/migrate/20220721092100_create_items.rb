class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :category_id,       null: false
      t.string :sales_name,         null: false
      t.integer :price
      t.integer :evaluation_id,     null: false
      t.string :comment_title,      null: false
      t.text :comment_detail
      t.references :user,           null: false, foreign_key: true

      t.timestamps
    end
  end
end
