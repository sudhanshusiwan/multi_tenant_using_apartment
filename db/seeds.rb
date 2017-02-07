# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!({email: "sudhanshusiwan@gmail.com", password: 'password', reset_password_token: nil,
                     reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3,
                     current_sign_in_at: "2017-01-10 00:13:38", last_sign_in_at: "2017-01-09 22:23:24",
                     current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", is_admin: true })

user = User.create!({email: "sudhanshu@gmail.com", password: 'password', reset_password_token: nil,
                     reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3,
                     current_sign_in_at: "2017-01-10 00:13:38", last_sign_in_at: "2017-01-09 22:23:24",
                     current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", is_admin: false })