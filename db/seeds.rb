# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'panpanpan@mail',
   password: 'panpanpan'
)

User.create!(
  [
    {email: 'shirushirushiru@mail', screen_name: 'shiru', password: 'shirushiru', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/Unknown.jpeg"), filename:"Unknown.jpeg")},
    {email: 'kopakopakopakopa@mail', screen_name: 'kopa', password: 'kopakopa', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/big.jpeg"), filename:"big.jpeg")},
    {email: 'bobobobobo@mail', screen_name: 'bochan', password: 'bobobobo', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/r.jpeg"), filename:"r.jpeg")}
  ]
)

StoreInformation.create!(
  [
    {name: 'toskaベーカリー', address: '神奈川県川崎市鷺沼00-01', access: '東急田園都市線鷺沼駅下車　徒歩５分', business_hours: '07:00~17:00', eat_in_space: 'なし', regular_holiday: '毎週火曜日' , store_image_url: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/breads-1867459_1280.jpeg"), filename:"breads-1867459_1280.jpeg")},
    {name: 'あけびベーカリー', address: '神奈川県横浜市市青葉区000-0001', access: '東急田園都市線青葉台駅下車　徒歩3分', business_hours: '08:00~18:00', eat_in_space: '20席', regular_holiday: '毎週火曜日' , store_image_url: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/bakery-gffcaf4976_640.jpg"), filename:"bakery-gffcaf4976_640.jpg")},
    {name: 'プラぱん', address: '東京都大田区梅屋敷001-0001', access: '京急線梅屋敷駅下車　徒歩10分', business_hours: '09:00~18:00', eat_in_space: '10席', regular_holiday: '毎週水曜日' , store_image_url: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/pexels-lisa-fotios-3586778.jpg"), filename:"pexels-lisa-fotios-3586778.jpg")},
  ]
)

Post.create!(
  user_id: "1",
  title: 'ジンジャーぱん',
  text: 'とても美味しかった',
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/miti-R1ql7fk3I1Y-unsplash.jpg"), filename:"miti-R1ql7fk3I1Y-unsplash.jpg")
)