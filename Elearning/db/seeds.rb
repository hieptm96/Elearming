# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

9.times do |n|
	title = "Basic_200"
	description = "Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. "
	Category.create!(title: title, description: description)
end

30.times do |n|
	en = "love"
	vi = "tinh yeu"
	category_id = "1"
	ans_a = "sai_1"
	ans_b = "sai_2"
	ans_c = "sai_3"
	ans_d = "tinh yeu"
	Word.create!(en: en, vi: vi, category_id: category_id, ans_a: ans_a, ans_b: ans_b, ans_c: ans_c, ans_d: ans_d)
end

30.times do |n|
	en = "dad"
	vi = "cha"
	category_id = "2"
	ans_a = "sai_1"
	ans_b = "sai_2"
	ans_c = "sai_3"
	ans_d = "cha"
	Word.create!(en: en, vi: vi, category_id: category_id, ans_a: ans_a, ans_b: ans_b, ans_c: ans_c, ans_d: ans_d)
end