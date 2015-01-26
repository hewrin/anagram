require_relative '../app/models/word'
File.open("db/words.txt", "r") do |file|
    file.each_line do |line|
      line.chomp!
      Word.create(word: line)
    end
 end

