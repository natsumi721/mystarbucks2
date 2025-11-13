# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "ドリンクデータを作成中..."

# 既存のデータをクリア（開発時のみ）
Drink.destroy_all

# コーヒー系ドリンクを作成
drinks = [
  {
    name: "スィートミルクコーヒー",
    price: "S:510 T:550 G:595",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785599772/4524785599772_1_m.jpg"
  },
  {
    name: "ブリュードコーヒー（ホット）",
    price: "S:380 T:420 G:465",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785000018/4524785000018_1_m.jpg"
  },
  {
    name: "ブリュードコーヒー（アイス）",
    price: "S:380 T:420 G:465",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785000018/4524785000018_1_m.jpg"
  },
  {
    name: "カフェミスト",
    price: "S:435 T:475 G:520",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785062870/4524785062870_1_m.jpg"
  },
  {
    name: "カプチーノ（ホット）",
    price: "S:455 T:495 G:540",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785000285/4524785000285_1_m.jpg"
  },
  {
    name: "カプチーノ（アイス）",
    price: "S:455 T:495 G:540",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785000285/4524785000285_1_m.jpg"
  },
  {
    name: "スターバックスラテ（ホット）",
    price: "S:455 T:495 G:540",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785000223/4524785000223_1_m.jpg"
  },
  {
    name: "スターバックスラテ（アイス）",
    price: "S:455 T:495 G:540",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785000223/4524785000223_1_m.jpg"
  },
  {
    name: "コーヒーフラペチーノ",
    price: "S:504 T:545 G:590",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785165731/4524785165731_1_m.jpg"
  },
  {
    name: "ダークモカチップフラペチーノ",
    price: "S:555 T:595 G:640",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785166059/4524785166059_1_m.jpg"
  },
  {
    name: "キャラメルフラペチーノ",
    price: "S:540 T:580 G:671",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785165816/4524785165816_1_m.jpg"
  },
  {
    name: "抹茶クリームフラペチーノ",
    price: "S:555 T:595 G:640",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785165892/4524785165892_1_m.jpg"
  },
  {
    name: "バニラクリームフラペチーノ",
    price: "S:540 T:580 G:625",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785165939/4524785165939_1_m.jpg"
  },
  {
    name: "マンゴーパッションティーフラペチーノ",
    price: "S:540 T:580 G:625",
    category: "",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785118751/4524785118751_1_m.jpg"
  },
  {
    name: "ホワイトモカ（アイス）",
    price: "S:500 T:540 G:585",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785034532/4524785034532_1_m.jpg"
  },
  {
    name: "アールグレイティーブーケ&ティーラテ（アイス）",
    price: "S:530 T:570 G:616",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785600546/4524785600546_1_m.jpg"
  },
  {
    name: "アールグレイティーブーケ&ティーラテ（ホット）",
    price: "S:530 T:570 G:616",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785600546/4524785600546_1_m.jpg"
  },
  {
    name: "ほうじ茶&クラシックティーラテ（ホット）",
    price: "S:510 T:550 G:595",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785557185/4524785557185_1_m.jpg"
  },
  {
    name: "ほうじ茶&クラシックティーラテ（アイス）",
    price: "S:510 T:550 G:595",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785557185/4524785557185_1_m.jpg"
  },
  {
    name: "ゆずシトラス&ティー（ホット）",
    price: "S:500 T:540 G:585",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785461154/4524785461154_1_m.jpg"
  },
  {
    name: "ゆずシトラス&ティー（アイス）",
    price: "S:500 T:550 G:585",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785461154/4524785461154_1_m.jpg"
  },
  {
   name: "ホワイトモカ（ホット）",
    price: "S:500 T:540 G:585",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785034532/4524785034532_1_m.jpg"
  },
  {
    name: "チャイティーラテ（ホット）",
    price: "S:480 T:520 G:565",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785034204/4524785034204_1_m.jpg"
  },
  {
    name: "チャイティーラテ（アイス）",
    price: "S:480 T:520 G:565",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785034204/4524785034204_1_m.jpg"
  },
  {
    name: "抹茶ティーラテ（ホット）",
    price: "S:480 T:520 G:565",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785106499/4524785106499_1_m.jpg"
  },
  {
    name: "抹茶ティーラテ（アイス）",
    price: "S:480 T:520 G:565",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785106499/4524785106499_1_m.jpg"
  },
  {
    name: "イングリッシュブレックファーストティーラテ（ホット）",
    price: "S:480 T:520 G:565",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785304970/4524785304970_1_m.jpg"
  },
  {
    name: "イングリッシュブレックファーストティーラテ（アイス）",
    price: "S:480 T:520 G:565",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785304970/4524785304970_1_m.jpg"
  },
  {
    name: "カモミールティーラテ",
    price: "S:480 T:520 G:565",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785305465/4524785305465_1_m.jpg"
  },
  {
    name: "アイスティー（パッション）",
    price: "S:440 T:480 G:525",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785349193/4524785349193_1_m.jpg"
  },
  {
    name: "ジョイフルメドレー",
    price: "T:500 G:545",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785348035/4524785348035_1_m.jpg"
  },
  {
    name: "キャラメルクリーム（ホット）",
    price: "S:455 T:495 G:540",
    category: "ホット",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785046900/4524785046900_1_m.jpg"
  },
  {
    name: "キャラメルクリーム（アイス）",
    price: "S:455 T:495 G:540",
    category: "アイス",
    image: "https://asset.menu.starbucks.co.jp/public/sku_images/4524785046900/4524785046900_1_m.jpg"
  }
  
]

# ドリンクを一括作成
drinks.each do |drink_data|
  drink = Drink.create!(drink_data)
  puts " #{drink.name} を作成しました"
end

puts " #{Drink.count}個のドリンクが作成されました！"






