def substrings(input, dictionary)
  res = {}
  downcase_input = input.downcase

  dictionary.map(&:downcase).each do |substr|
    substr_arr = substr.chars
    count = downcase_input
      .each_char
      .each_cons(substr.length)
      .count(substr_arr)
    res[substr] = count if count > 0
  end

  res
end
