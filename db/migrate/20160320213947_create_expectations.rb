class CreateExpectations < ActiveRecord::Migration
  def change
    create_table :expectations do |t|
      t.belongs_to :test, index: true, foreign_key: true
      t.string :assertion, null: false
      t.integer :order, null: false, default: 0

      t.timestamps null: false
    end
  end
end
