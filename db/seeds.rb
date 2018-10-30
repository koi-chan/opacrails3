# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bibliographies = Bibliography.create([
  {
    isbn13: 9784061473928,
    publisher: '講談社',
    author: 'はやみねかおる',
    title: 'そして五人はいなくなる'
  },
  {
    isbn13: 9784061484054,
    publisher: '講談社',
    author: 'はやみねかおる',
    title: '亡霊は夜歩く'
  },
  {
    isbn13: 9784488741013,
    publisher: '東京創元社',
    author: '笹本祐一',
    title: '妖精作戦'
  }
])

collections = Collection.create([
  {
    bibliography_id: 1,
    callnum: '913.6'
  },
  {
    bibliography_id: 2,
    callnum: '913.6'
  }
])

user_statuses = UserStatus.create([
  {
    name: '使用不可',
    loan_days: 0,
    reloan: 0
  },
  {
    name: '生徒',
    loan_days: 7,
    reloan: 1
  },
  {
    name: '教職員',
    loan_days: 14,
    reloan: 2
  }
])

users = User.create([
  {
    name: '生徒1',
    user_status_id: 2
  },
  {
    name: '生徒2',
    user_status_id: 2
  },
  {
    name: '先生1',
    user_status_id: 3
  }
])

loans = Loan.create([
  {
    user_id: 1,
    collection_id: 1,
  }
])
