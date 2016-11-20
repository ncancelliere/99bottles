class Bottles

  def song
    verses(99, 0)
  end

  def verse(bottle_amount)
    verse_1(bottle_amount) + verse_2(bottle_amount)
  end

  def verses(starting, ending)
    (starting).downto(ending).collect{ |amount| verse(amount) }.compact.join("\n")
  end

  private

  def pluralize(amount)
    return 'no more bottles' if amount <= 0
    amount == 1 ? "#{amount} bottle" : "#{amount} bottles"
  end

  def take_it_down(amount)
    amount == 1 ? 'it' : 'one'
  end

  def verse_1(bottle_amount)
    "#{pluralize(bottle_amount).capitalize} of beer on the wall, #{pluralize(bottle_amount)} of beer.\n"
  end

  def verse_2(bottle_amount)
    after_drinking_amount = bottle_amount - 1
    if bottle_amount > 0
      "Take #{take_it_down(bottle_amount)} down and pass it around, #{pluralize(after_drinking_amount)} of beer on the wall.\n"
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

end
