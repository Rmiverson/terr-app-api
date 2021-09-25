class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :parcel_number
      t.string :name
      t.string :address_number
      t.string :city
      t.string :zip_code
      t.text :notes
      t.boolean :do_not_call
      t.float :latitude
      t.float :longitude
      t.timestamps
      t.references :territory, null: false, foreign_key: true
    end
  end
end
