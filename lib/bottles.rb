class Bottles
  def verse(number)
    "#{bottles_text(number)} of beer on the wall, #{bottles_text(number)} of beer.\n" \
    "Take one down and pass it around, #{bottles_text(number - 1)} of beer on the wall.\n"
  end

  def bottles_text(number)
    "#{number} bottles"
  end
end