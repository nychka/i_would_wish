class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.datetime :start
      t.datetime :finish
      t.integer :status, default: 0
      t.text :body
      t.integer :category_id

      t.timestamps
    end
  end
end
