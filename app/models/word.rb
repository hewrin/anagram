class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagram(string)


    @result_array = []
    Word.all.each do |x|
        if x.word.to_s.split("").sort == string.to_s.split("").sort
          @result_array << x.word
        end
        # @result_array << x.word

    end

    @result_array
end
end