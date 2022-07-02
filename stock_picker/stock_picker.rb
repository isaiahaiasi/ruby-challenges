def stock_picker(tickets)
  buy_date = 0
  sell_date = 1

  tickets.each_cons(2).with_index do |(p1, p2), day1|
    day2 = day1 + 1
    sell_date = day2 if p2 > tickets[sell_date]
    buy_date = day1 if p1 < tickets[buy_date] && day1 < sell_date
  end

  [buy_date, sell_date]
end
