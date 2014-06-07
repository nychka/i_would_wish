class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :noun
      t.string :verb
      t.integer :user_id

      t.timestamps
    end
  end
end
