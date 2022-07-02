require_relative './caesar'

RSpec.describe 'Caesar Cipher >>' do
  it 'some tests' do
    misc_tests = [
      [["What a string!", 5], "Bmfy f xywnsl!"],
      [["Hello... zzz...", 3], "Khoor... ccc..."],
      [["134567890!@#$%^&*()_a", 25], "134567890!@#$%^&*()_z"],
      [["Big shifts work", 34], "Jqo apqnba ewzs"],
      [["Negative shifts work", -7], "Gxztmbox labyml phkd"]
    ]

    misc_tests.each do |(input, shift_amt), res|
      expect(caesar_cipher(input, shift_amt)).to eq(res)
    end
  end
end
