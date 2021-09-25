# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({username: 'rmiverson', password_digest: '1234', email: 'riley@gmail.com', role: 1, first_name: 'Riley', last_name: 'Iverson', baptized: true, publisher: true, elder: false})

Territory.create({number: 0, territory_type: 0, name: 'test1', last_audited: DateTime.current, last_worked: DateTime.current, notes: "N/A"})
Territory.create({number: 1, territory_type: 1, name: 'test2', last_audited: DateTime.current, last_worked: DateTime.current, notes: "N/A"})
Territory.create({number: 2, territory_type: 0, name: 'test3', last_audited: DateTime.current, last_worked: DateTime.current, notes: "N/A"})

Address.create({parcel_number: "P0000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 1})
Address.create({parcel_number: "P1000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 1})
Address.create({parcel_number: "P2000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 1})

Address.create({parcel_number: "P3000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 2})
Address.create({parcel_number: "P4000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 2})
Address.create({parcel_number: "P5000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 2})

Address.create({parcel_number: "P6000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 3})
Address.create({parcel_number: "P7000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 3})
Address.create({parcel_number: "P8000", name: "mr business", address_number: "1234", city: "Burlington", zip_code: "98273", notes: "N/A", do_not_call: false, latitude: 0.0, longitude: 0.0, territory_id: 3})

Checkout.create({start: DateTime.current, user_id: 1, territory_id: 1})