class CreateTerritories < ActiveRecord::Migration[6.1]
  def change
    create_table :territories do |t|
      t.integer :number
      t.integer :territory_type
      t.string :name
      t.datetime :last_audited
      t.datetime :last_worked
      t.text :notes
      t.timestamps
    end
  end
end
