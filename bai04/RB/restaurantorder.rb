require 'json'
require 'colorize'

puts "Choose your language:"
puts "- English"
puts "- Tiếng Việt"
print "Your selection: "
language = gets.chomp # chooses language

class English # English instance
	englishfile = File.open("homework/bai4/english.json")
	@@output = JSON.load(englishfile) # open and loads json file

	def self.maindishes
		puts "What would you like to order for your main?".colorize(:lightblue) # ooh light blue for the prompt text owo
		puts "1. #{@@output["maindishes"]["1"]}"
		puts "2. #{@@output["maindishes"]["2"]}"
		puts "3. #{@@output["maindishes"]["3"]}"
		print "Your order: "
		@@maindishes = gets.chomp
	end

	def self.drinks
		puts "What would you like to order for your drinks?".colorize(:lightgreen) # another color owo
		puts "1. #{@@output["drinks"]["1"]}"
		puts "2. #{@@output["drinks"]["2"]}"
		puts "3. #{@@output["drinks"]["3"]}"
		print "Your order: "
		@@drinks = gets.chomp
	end

	def self.desserts
		puts "What would you like to order for your desserts?".colorize(:yellow) # nice yellow there owo
		puts "1. #{@@output["desserts"]["1"]}"
		puts "2. #{@@output["desserts"]["2"]}"
		puts "3. #{@@output["desserts"]["3"]}"
		print "Your order: "
		@@desserts = gets.chomp
	end

	def self.order
		maindishes
		drinks
		desserts
	end

	def self.repeat
		print "Your order includes: #{@@maindishes}, #{@@drinks}, #{@@desserts}. Do you want to order again? (Y/N): "
		@@repeat = gets.chomp
		if @@repeat == "Y"
			order
		elsif @@repeat == "N"
			puts "Thank you for your order"
		else
			puts "Invalid input"
		end
end

class Vietnamese
	vietnamesefile = File.open("homework/bai4/vietnamese.json")
	@@output = JSON.load(vietnamesefile)

	def self.maindishes
		puts "Bạn muốn đặt món ăn gì?"
		puts "1. #{@@output["maindishes"]["1"]}"
		puts "2. #{@@output["maindishes"]["2"]}"
		puts "3. #{@@output["maindishes"]["3"]}"
		print "Món ăn của bạn: "
		@@maindishes = gets.chomp
	end

	def self.drinks
		puts "Bạn muốn uống gì?"
		puts "1. #{@@output["drinks"]["1"]}"
		puts "2. #{@@output["drinks"]["2"]}"
		puts "3. #{@@output["drinks"]["3"]}"
		print "Món ăn của bạn: "
		@@drinks = gets.chomp
	end
	
	def self.desserts
		puts "Bạn muốn đặt món tráng miệng gì?"
		puts "1. #{@@output["desserts"]["1"]}"
		puts "2. #{@@output["desserts"]["2"]}"
		puts "3. #{@@output["desserts"]["3"]}"
		print "Món ăn của bạn: "
		@@desserts = gets.chomp
	end

	def self.order
		maindishes
		drinks
		desserts
	end

	def self.repeat
		print "Bạn đã đặt #{@@maindishes}, #{@@drinks}, #{@@desserts}. Bạn có muốn đặt lại? (Y/N): "
		@@repeat = gets.chomp
		if @@repeat == "Y"
			order
		elsif @@repeat == "N"
			puts "Cảm ơn bạn đã đặt"
		else
			puts "Lựa chọn không hợp lệ."
		end
	end
end

if language.downcase == "english"
	English.order.repeat
elsif language.downcase == "vietnamese"
	Vietnamese.order.repeat
else
	puts "Invalid input"
end

# note to self: untested code, it may work.