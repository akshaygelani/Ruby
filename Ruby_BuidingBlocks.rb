# Class BuildingBlocks
class BuildingBlocks
  def initialize
    puts('Welcome to Ruby Exercise')
  end

  def str_operations
    puts 'Enter you String'
    str = gets.chomp
    puts "#{str.upcase} <-- String is Converted to Upcase"
    puts "#{str.downcase} <-- String is Converted to Downcase"
    puts "#{str.reverse} <-- Reverse the String"
    puts "#{str.gsub('A', 'L')} <-- Finds the Specified character and replaces"
    puts "#{str.strip} <-- Removes Leading and Trailing WhiteSpaces"
    puts "#{str.length} <-- Returns the No of Character in String"
    print str.include? 'A'
    puts ' <-- Checks for Specific String or Character exists in given string or not'
    puts "#{str[0]} <-- Returns the Character at Specified Index"
    puts "#{str[0, 2]} <-- Returns the substring starting from index 0 to 1 (2 is Excluded)"
    puts "#{str.index('A')} <-- Returns the Index Position of Specified Character"
    puts 'Welcome <<  str <-- String Concatenation'
  end

  def num_operations
    puts 'Enter Any Number(Decimal/Integer)'
    num = gets.chomp.to_i
    puts "#{num.abs} <-- Absolute Value"
    puts "#{num.round} <-- Round Value"
    puts "#{num.ceil} <-- Ceil Value"
    puts "#{num.floor} <-- Floor Value"

    puts '<-- Some of the Math Functions -->'
    puts "#{Math.sqrt(25)} <-- Square Root of Given Value"
    puts "#{Math.log(8)} <-- Log Value"
    puts '2***3 is same as 2^3'
    puts 'hi' * 3
    puts '[*1..6] <-- Creates the Range from 1 to 6'
    puts '[*1...6] <-- Creates the Range Excluding 6'
    puts 'Range.(3,5) <-- Creates the Range From 3 to 5'
  end

  def array_operations
    data = [1, 2, 3, 4, 5]
    puts data[0] = 4
    puts data.include?(3)
    puts data.max # Returns the Max Value
    puts data.min # Returns the Min Value
    data.push(6) # Adds The New Element at the end
    data.pop # Removes The Element from the end
    data.shift # Removes the first element
    data.unshift(12) # Adds the element at a start
    data.delete_at(2) # Deletes the Element at Specified Position

    # [1, 2, 3] - [2, 3, 4] # 1
    (1..6).to_a
  end

  def hash_operations
    hash = {}
    data = {
      1 => 'A',
      2 => 'B',
      3 => 'C'
    }
    puts data[1]
    print data.keys
    print data.values
    data.delete(1)
    data.merge(hash)
  end
end

obj = BuildingBlocks.new

puts "With Which Building Block You Want to Work?\n1) String\n2) Numbers\n3) Array\n4) Hash"

choice = gets.chomp.to_i
case choice
when 1
  obj.str_operations
when 2
  obj.num_operations
when 3
  obj.array_operations
when 4
  obj.hash_operations
else
  puts 'Enter Valid Choice!!'
end
