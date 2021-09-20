ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

user1 = User.create!(email: "test@example.com", password: "password")
user2 = User.create!(email: "test2@example.com", password: "password")
user3 = User.create!(email: "test3@example.com", password: "password")

user1.foods.create!(name: "パンケーキ", comment: "ふわふわです！\nシロップをかけたい！")
user2.foods.create!(name: "カレー", comment: "スパイシーです！\n食欲をそそる！")
user3.foods.create!(name: "ラーメン", comment: "好物です！\n味玉もつけたい！")
user2.foods.create!(name: "チャーハン", comment: "香ばしくて美味しい！\n餃子も一緒に食べたい！")
user1.foods.create!(name: "ショートケーキ", comment: "甘くて美味しい！\nたまには食べたい！")

puts "ユーザーの初期データインポートに成功しました。"
