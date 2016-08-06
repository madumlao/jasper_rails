# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Todo.create!(title: 'grocery shopping', notes: 'pickles, eggs, red onion')
#Todo.create!(title: 'wash the car')
#Todo.create!(title: 'register kids for school', notes: 'Register Kira for Ruby Junior High and Caleb for Rails High School')
#Todo.create!(title: 'check engine light', notes: 'The check engine light is on in the Tacoma')
#Todo.create!(title: 'dog groomers', notes: 'Take Pinky and Redford to the groomers on Wednesday the 23rd')
vatravel=VoucherAccount.create!(name: "Travel")
vamerchandise=VoucherAccount.create!(name: "Merchandise Expense")
vasupplies=VoucherAccount.create!(name: "Supplies & Equipment")
vataxes=VoucherAccount.create!(name: "Taxes & Fees")
vamedical=VoucherAccount.create!(name: "Medical & Insurance")
vaelectricity=VoucherAccount.create!(name: "Utils - Electricity")
VoucherAccount.create!(name: "Utils - Water")
VoucherAccount.create!(name: "Food")
VoucherAccount.create!(name: "Utils - Landline")
VoucherAccount.create!(name: "Utils - Mobile")
Voucher.create!(no: "12345", payee: "me", voucher_account: vatravel, amount: 1000, description: "meryenda", date: "2016-01-01")

