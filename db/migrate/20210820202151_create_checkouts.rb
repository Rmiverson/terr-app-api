class CreateCheckouts < ActiveRecord::Migration[6.1]
  def change
    create_table :checkouts do |t|
      t.datetime :start
      t.datetime :finish
      t.references :user, null: false, foreign_key: true
      t.references :territory, null: false, foreign_key: true
      t.timestamps
    end
  end
end