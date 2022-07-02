# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

require_relative './bubble_sort'

RSpec.describe 'Bubble Sort >>' do
  it 'passes some tests' do
    test_arrays = [
      [[4,3,78,2,0,2], [0,2,2,3,4,78]],
      [[17,3,6,9,20,23,6,1,10], [1,3,6,6,9,10,17,20,23]],
    ]

    test_arrays.each do |(unsorted, sorted)|
      expect(bubble_sort(unsorted)).to eq(sorted)
    end
  end

  it 'bubble_sort does NOT mutate original array' do
    input = [4,3,78,2,0,2]
    bubble_sort(input)
    expect(input).to eq([4,3,78,2,0,2])
  end

  it 'bubble_sort! DOES mutate original array' do
    input = [4,3,78,2,0,2]
    bubble_sort!(input)
    expect(input).to eq([0,2,2,3,4,78])
  end
end