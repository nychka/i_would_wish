class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.text :body
      t.datetime :start
      t.datetime :finish
      t.integer :status, default: 0
      t.integer :wish_id

      t.timestamps
    end
  end
end
