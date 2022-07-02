require_relative './stock_picker'

RSpec.describe 'Stock Picker >> Finds optimal >>' do
  it 'happy path' do
    stock_tickets = [17,3,6,9,20,23,6,1,10]
    expect(stock_picker(stock_tickets)).to eq([1, 5])
  end

  it 'lowest day last' do
    stock_tickets = [17,3,6,9,15,8,6,6,10,1]
    expect(stock_picker(stock_tickets)).to eq([1, 4])
  end

  it 'highest day first' do
    stock_tickets = [24,6,3,9,15,8,6,6,16,5]
    expect(stock_picker(stock_tickets)).to eq([2, 8])
  end
end
