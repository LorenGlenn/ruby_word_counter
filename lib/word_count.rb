class String
  define_method(:word_count) do |word|
    self.downcase.scan(word.downcase).count
  end
end
