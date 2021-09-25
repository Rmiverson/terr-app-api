class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :role
      t.string :first_name
      t.string :last_name
      t.boolean :baptized
      t.boolean :publisher
      t.boolean :elder
      t.timestamps
    end
  end
end
