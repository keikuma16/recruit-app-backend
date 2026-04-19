# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Job.create!([
  { title: "経験者歓迎！大手企業でのWebエンジニア募集", category: "エンジニア", salary: 600 },
  { title: "未経験OK！営業アシスタント急募", category: "営業", salary: 350 },
  { title: "グローバル企業でのマーケティングマネージャー", category: "マーケティング", salary: 800 },
  { title: "UI/UXデザイナー募集！急成長中のスタートアップ", category: "デザイン", salary: 550 },
  { title: "一般事務スタッフ募集！週3日からOK", category: "事務", salary: 300 }
])