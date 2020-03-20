#!/usr/bin/env ruby

puts "Entrer du text"
text = gets.chomp
words = text.split
count_words = Hash.new(0)
words.each { |word| count_words[word] += 1 }
count_words = count_words.sort_by do |word, count|
    count
end
count_words.reverse!
count_words.each do |name, count|
    puts name + " " + count.to_s
end
