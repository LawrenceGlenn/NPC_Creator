module NpcsHelper

  def inchesToFeet(inch)
    #{}"#{inch/12} feet #{inch%12} inches"
    Dice.new.roll(1,8)
  end


end
