def caesar_cipher(str, shift_amt)
  str.split('').map {|c| shift(c, shift_amt)}.join('')
end

# not super optimal but oh well
def shift(c, shift_amt)
  return c unless c =~ /[a-zA-Z]/

  base = c.ord.between?(65, 90) ? 65 : 97
  # % does what you *want* in Ruby! ^_^
  shifted_ord = (c.ord - base + shift_amt) % 26 + base
  shifted_ord.chr
end
