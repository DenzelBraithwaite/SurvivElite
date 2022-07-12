class ParentController
  attr_reader :view
  attr_accessor :survivor

  def initialize(survivor, view)
    @survivor = survivor
    @view = view
  end

  # Custom method to capitalize a word
  def capitalize(word)
    length = word.length
    beginning = word[0].upcase
    ending = word[1..length].downcase
    return beginning + ending
  end

  # Custom method to capitalize multiple words
  def capitalize_sentence(string)
    string_as_array = string.split(" ")
    string_as_array.map! { |word| capitalize(word) }
    return string_as_array.join(" ")
  end

  def return_key_for_index(index, hash)
    value = hash.values[index]
    hash.key(value)
  end
end
