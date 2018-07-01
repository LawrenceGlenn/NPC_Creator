# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Race.create(name: "Dwarf", modNum: 2, modDie:4, weightMod: 7, maleBaseWeight: 150, 
  femaleBaseWeight: 120, maleBaseHeight: 45, femaleBaseHeight: 43,
  adultAge: 43, middleAge: 125, oldAge: 188, venerableAge: 250, maxAge: 450,
  eyeColor: {
    amber: {chance: 9, hue: 35, saturation: 85, lightness: 45}, 
    black: {chance: 4, hue: 30, saturation: 80, lightness: 15}, 
    blue: {chance: 1, hue: 212, saturation: 88, lightness: 55}, 
    brown: {chance: 35, hue: 30, saturation: 80, lightness: 30},
    gray: {chance: 34, hue: 210, saturation: 30, lightness: 62}, 
    green: {chance: 1, hue: 115, saturation: 55, lightness: 55}, 
    hazel: {chance: 16, hue: 43, saturation: 38, lightness: 34}
  })

Race.create(name: "Elf", modNum: 2, modDie:7, weightMod: 3, maleBaseWeight: 100, 
  femaleBaseWeight: 90, maleBaseHeight: 64, femaleBaseHeight: 64,
  adultAge: 114, middleAge: 175, oldAge: 263, venerableAge: 350, maxAge: 750,
  eyeColor: {black: {chance: 20, hue: 210, saturation: 85, lightness: 15}, 
  blue: {chance: 20, hue: 210, saturation: 85, lightness: 55},
  dark_blue: {chance: 20, hue: 210, saturation: 85, lightness: 30},
  green: {chance: 40, hue: 115, saturation: 70, lightness: 50} })

Race.create(name: "Gnome", modNum: 2, modDie:4, weightMod: 1, maleBaseWeight: 35, 
  femaleBaseWeight: 30, maleBaseHeight: 36, femaleBaseHeight: 34,
  adultAge: 44, middleAge: 100, oldAge: 150, venerableAge: 200, maxAge: 500,
  eyeColor: {light_red: {chance: 1, hue: 6, saturation: 80, lightness: 65},
    red: {chance: 1, hue: 6, saturation: 80, lightness: 50},
    dark_red: {chance: 1, hue: 6, saturation: 80, lightness: 35},
    light_orange: {chance: 1, hue: 28, saturation: 80, lightness: 65},
    orange: {chance: 1, hue: 28, saturation: 80, lightness: 50},
    dark_orange: {chance: 1, hue: 28, saturation: 80, lightness: 35},
    light_yellow: {chance: 1, hue: 60, saturation: 80, lightness: 65},
    yellow: {chance: 1, hue: 60, saturation: 80, lightness: 50},
    dark_yellow: {chance: 1, hue: 60, saturation: 80, lightness: 35},
    light_green: {chance: 1, hue: 120, saturation: 80, lightness: 65},
    green: {chance: 1, hue: 120, saturation: 80, lightness: 50},
    dark_green: {chance: 1, hue: 120, saturation: 80, lightness: 35},
    light_teal: {chance: 1, hue: 180, saturation: 80, lightness: 65},
    teal: {chance: 1, hue: 180, saturation: 80, lightness: 50},
    dark_teal: {chance: 1, hue: 180, saturation: 80, lightness: 35},
    light_blue: {chance: 1, hue: 240, saturation: 80, lightness: 65},
    blue: {chance: 1, hue: 240, saturation: 80, lightness: 50},
    dark_blue: {chance: 1, hue: 240, saturation: 80, lightness: 35},
    light_purple: {chance: 1, hue: 282, saturation: 80, lightness: 65},
    purple: {chance: 1, hue: 282, saturation: 80, lightness: 50},
    dark_purple: {chance: 1, hue: 282, saturation: 80, lightness: 35},
    light_indigo: {chance: 1, hue: 306, saturation: 80, lightness: 65},
    indigo: {chance: 1, hue: 306, saturation: 80, lightness: 50},
    dark_indigo: {chance: 1, hue: 306, saturation: 80, lightness: 35} })

Race.create(name: "Goblin", modNum: 2, modDie:4, weightMod: 1, maleBaseWeight: 30, 
  femaleBaseWeight: 25, maleBaseHeight: 32, femaleBaseHeight: 30,
  adultAge: 13, middleAge: 20, oldAge: 30, venerableAge: 40, maxAge: 60,
  eyeColor: {light_red: {chance: 1, hue: 6, saturation: 80, lightness: 65},
    red: {chance: 1, hue: 6, saturation: 80, lightness: 50},
    dark_red: {chance: 1, hue: 6, saturation: 80, lightness: 35} })

Race.create(name: "Half-Elf", modNum: 2, modDie:8, weightMod: 5, maleBaseWeight: 110, 
  femaleBaseWeight: 90, maleBaseHeight: 62, femaleBaseHeight: 60,
  adultAge: 21, middleAge: 62, oldAge: 93, venerableAge: 125, maxAge: 185,
  eyeColor: {amber: {chance: 3, hue: 35, saturation: 85, lightness: 45}, 
  black: {chance: 1, hue: 30, saturation: 80, lightness: 15}, 
  blue: {chance: 14, hue: 210, saturation: 85, lightness: 55}, 
  brown: {chance: 28, hue: 30, saturation: 80, lightness: 30}, 
  dark_blue: {chance: 10, hue: 210, saturation: 85, lightness: 30}, 
  gray: {chance: 4, hue: 210, saturation: 30, lightness: 62}, 
  green: {chance: 24, hue: 115, saturation: 55, lightness: 55}, 
  hazel: {chance: 6, hue: 43, saturation: 38, lightness: 34}, 
  very_dark_blue: {chance: 10, hue: 210, saturation: 85, lightness: 15} })

Race.create(name: "Half-Orc", modNum: 2, modDie:12, weightMod: 7, maleBaseWeight: 150, 
  femaleBaseWeight: 110, maleBaseHeight: 58, femaleBaseHeight: 53,
  adultAge: 15, middleAge: 30, oldAge: 45, venerableAge: 60, maxAge: 80,
  eyeColor: {amber: {chance: 6, hue: 35, saturation: 85, lightness: 45}, 
  black: {chance: 3, hue: 30, saturation: 80, lightness: 15}, 
  blue: {chance: 9, hue: 210, saturation: 85, lightness: 55}, 
  brown: {chance: 55, hue: 30, saturation: 80, lightness: 30},
  gray: {chance: 8, hue: 210, saturation: 30, lightness: 62}, 
  green: {chance: 8, hue: 115, saturation: 55, lightness: 55}, 
  hazel: {chance: 11, hue: 43, saturation: 38, lightness: 34} })

Race.create(name: "Halfling", modNum: 2, modDie:4, weightMod: 1, maleBaseWeight: 30, 
  femaleBaseWeight: 25, maleBaseHeight: 32, femaleBaseHeight: 30,
  adultAge: 22, middleAge: 50, oldAge: 75, venerableAge: 100, maxAge: 200,
  eyeColor: {amber: {chance: 12, hue: 35, saturation: 85, lightness: 45}, 
  black: {chance: 1, hue: 30, saturation: 80, lightness: 15}, 
  blue: {chance: 28, hue: 210, saturation: 85, lightness: 55}, 
  brown: {chance: 8, hue: 30, saturation: 80, lightness: 30}, 
  gray: {chance: 12, hue: 210, saturation: 30, lightness: 62}, 
  green: {chance: 27, hue: 115, saturation: 55, lightness: 55}, 
  hazel: {chance: 12, hue: 43, saturation: 38, lightness: 34} })

Race.create(name: "Human", modNum: 2, modDie:10, weightMod: 5, maleBaseWeight: 120, 
  femaleBaseWeight: 85, maleBaseHeight: 58, femaleBaseHeight: 53,
  adultAge: 16, middleAge: 35, oldAge: 53, venerableAge: 70, maxAge: 110,
  eyeColor: {
    amber: {chance: 6, hue: 35, saturation: 85, lightness: 45}, 
    black: {chance: 3, hue: 30, saturation: 80, lightness: 15}, 
    blue: {chance: 9, hue: 210, saturation: 85, lightness: 55}, 
    brown: {chance: 55, hue: 30, saturation: 80, lightness: 30},
    gray: {chance: 8, hue: 210, saturation: 30, lightness: 62}, 
    green: {chance: 8, hue: 115, saturation: 55, lightness: 55}, 
    hazel: {chance: 11, hue: 43, saturation: 38, lightness: 34}
  },
  skinColor: {
    pale: {chance: 10, hue: {min: 28, max: 48}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 65, hue: {min: 20, max: 36}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 15, hue: {min: 18, max: 34}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    olive: {chance: 7, hue: {min: 12, max: 28}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_brown: {chance: 2, hue: {min: 1, max: 18}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    black: {chance: 1, hue: {min: 213, max: 225}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}
  })