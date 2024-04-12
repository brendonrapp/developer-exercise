class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    newStr = str.split.map do |word|
      pure_word = word.gsub(/[^\w]/, '')
      punctuation = word.match(/[^\w]*$/)[0]
  
      if word.length > 4 
        if (word.match?(/\A[A-Z]/))
          "Marklar#{punctuation}"
        else (word.length > 4) 
          "marklar#{punctuation}"
        end
      else 
        word
      end
    end
    return newStr.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 1
    sum = 0
    current_term = 1
    prev_term = 1
    n = 2
    while n < nth
      n += 1
      next_term = prev_term + current_term
      prev_term = current_term
      current_term = next_term
      next if next_term % 2 == 1
      sum += next_term
    end
    return sum
  end

end
