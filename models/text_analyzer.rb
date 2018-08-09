# Your TextAnalyzer model code will go here.
class TextAnalyzer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.chomp.downcase.split(" ").count
  end

  def string_to_array
    @text.downcase.chomp.chars - [" "]
  end

  def count_of_vowels
    vowel_array = string_to_array.select {|character| character.match(/[aeiou]+/)}
    vowel_array.count
  end

  def count_of_consonants
    string_to_array.count - count_of_vowels
  end

  def frequency_hash
    my_hash = {}
        string_to_array.map {|character| my_hash[character] = 0}
        my_hash.each do |k,v|
        string_to_array.each do |character|
          if k == character
          my_hash[k] += 1
          end
        end
      my_hash
    end
  end

  def most_used_letter
    my_hash = frequency_hash
    array = []
    array << my_hash.key(my_hash.values.max).upcase
    array << my_hash.values.max
    array
  end

end
