class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name, null: false, index: true
      t.string :blurb, null: false
      t.string :keywords
      t.integer :parent

      t.timestamps null: false
    end
  end
end
