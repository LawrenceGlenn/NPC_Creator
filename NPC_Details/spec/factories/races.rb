FactoryGirl.define do


  factory :race do
    factory :race_human do
      name   "Human"
      id  8
      modNum 2
      modDie 10
      weightMod 5
      maleBaseWeight 120
      femaleBaseWeight 85
      maleBaseHeight 58
      femaleBaseHeight 53
      adultAge 16
      middleAge 35
      oldAge 53
      venerableAge 70
      maxAge 110
    end
    factory :race_dwarf do
      name   "Dwarf"
      id  1
      modNum 2
      modDie 4
      weightMod 7
      maleBaseWeight 150
      femaleBaseWeight 120
      maleBaseHeight 45
      femaleBaseHeight 43
      adultAge 43
      middleAge 125
      oldAge 188
      venerableAge 250
      maxAge 450
    end
    factory :race_elf do
      name   "Elf"
      id  2
      modNum 2
      modDie 7
      weightMod 3
      maleBaseWeight 100
      femaleBaseWeight 90
      maleBaseHeight 64
      femaleBaseHeight 64
      adultAge 114
      middleAge 175
      oldAge 263
      venerableAge 350
      maxAge 750
    end
  end
end