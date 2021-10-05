class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :parcel_number
      t.string :name
      t.string :po_box
      t.string :address_number
      t.string :street
      t.string :city
      t.string :zip_code
      t.boolean :rental
      t.string :phone_1
      t.string :phone_2
      t.text :notes
      t.boolean :do_not_call, :default => false
      t.float :latitude
      t.float :longitude
      t.timestamps
      t.references :territory, null: false, foreign_key: true
    end
  end
end
