User.create!(email: "test@example.com", password: "password")
user1 = User.first
Food.create!(name: "パンケーキ", comment: "ふわふわです！", user_id: user1.id)
Food.create!(name: "カレー", comment: "スパイシーです！", user_id: user1.id)
Food.create!(name: "ラーメン", comment: "好物です！", user_id: user1.id)
puts "ユーザーの初期データインポートに成功しました。"
