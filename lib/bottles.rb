class Bottles
  def verse(number)
    return zero_verse if number.zero?

    "#{bottles_text(number)} of beer on the wall, #{bottles_text(number)} of beer.\n" \
    "#{second_leading_text(number)} and pass it around, #{bottles_text(number - 1)} of beer on the wall.\n"
  end

  def verses(from, to)
    from.downto(to).map { |number| verse(number) }.join
  end

  def song
    verses(99, 0)
  end

  def zero_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def bottles_text(number)
    return "no more bottles" if number.zero?

    if number > 1
      "#{number} bottles"
    else
      "#{number} bottle"
    end
  end

  def second_leading_text(number)
    if number > 1
      "Take one down"
    else
      "Take it down"
    end
  end
end