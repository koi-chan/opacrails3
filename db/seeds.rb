# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_statuses = UserStatus.create([
  {
    name: '使用不可',
    loan_days: 0
  },
  {
    name: '生徒',
    loan_days: 7
  },
  {
    name: '教職員',
    loan_days: 14
  }
])
