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
  },
  skinColor: {
    pale: {chance: 1, hue: {min: 28, max: 48}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 2, hue: {min: 20, max: 36}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 3, hue: {min: 18, max: 34}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    olive: {chance: 2, hue: {min: 12, max: 28}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_brown: {chance: 1, hue: {min: 1, max: 18}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    black: {chance: 1, hue: {min: 213, max: 225}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}
  },
  hairColor: {
    black: {chance: 17, hue: {min: 24, max: 36}, saturation: {min: 0, max: 10}, lightness: {min: 6, max: 31}}, 
    dark_brown: {chance: 17, hue: {min: 24, max: 36}, saturation: {min: 50, max: 90}, lightness: {min: 20, max: 30}}, 
    brown: {chance: 17, hue: {min: 24, max: 36}, saturation: {min: 30, max: 80}, lightness: {min: 30, max: 45}}, 
    light_brown: {chance: 17, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    ashen_brown: {chance: 17, hue: {min: 24, max: 36}, saturation: {min: 20, max: 40}, lightness: {min: 45, max: 50}},
    auburn: {chance: 7, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}}, 
    red: {chance: 7, hue: {min: 0, max: 15}, saturation: {min: 50, max: 95}, lightness: {min: 40, max: 65}}, 
    gray: {chance: 1, hue: {min: 0, max: 60}, saturation: {min: 0, max: 12}, lightness: {min: 40, max: 80}}
  })

Race.create(name: "Elf", modNum: 2, modDie:7, weightMod: 3, maleBaseWeight: 100, 
  femaleBaseWeight: 90, maleBaseHeight: 64, femaleBaseHeight: 64,
  adultAge: 114, middleAge: 175, oldAge: 263, venerableAge: 350, maxAge: 750,
  eyeColor: {black: {chance: 20, hue: 210, saturation: 85, lightness: 15}, 
  blue: {chance: 20, hue: 210, saturation: 85, lightness: 55},
  dark_blue: {chance: 20, hue: 210, saturation: 85, lightness: 30},
  green: {chance: 40, hue: 115, saturation: 70, lightness: 50} 
  },
  skinColor: {
    pale: {chance: 60, hue: {min: 28, max: 48}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 39, hue: {min: 20, max: 36}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 1, hue: {min: 18, max: 34}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}
  },
  hairColor: { 
    light_brown: {chance: 2, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    blond: {chance: 30, hue: {min: 54, max: 60}, saturation: {min: 60, max: 86}, lightness: {min: 36, max: 70}}, 
    strawberry_blond: {chance: 30, hue: {min: 35, max: 52}, saturation: {min: 75, max: 100}, lightness: {min: 55, max: 65}}, 
    pale_blond: {chance: 30, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 70, max: 80}}, 
    auburn: {chance: 2, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}}, 
    red: {chance: 1, hue: {min: 0, max: 15}, saturation: {min: 50, max: 95}, lightness: {min: 40, max: 65}}, 
    white: {chance: 5, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 85, max: 95}}
  })

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
    dark_indigo: {chance: 1, hue: 306, saturation: 80, lightness: 35} 
    },
  skinColor: {
    pale: {chance: 10, hue: {min: 20, max: 58}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 65, hue: {min: 20, max: 46}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 15, hue: {min: 18, max: 44}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    olive: {chance: 7, hue: {min: 12, max: 38}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_brown: {chance: 2, hue: {min: 1, max: 28}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    black: {chance: 1, hue: {min: 203, max: 225}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}, 
    red_ish: {chance: 1, hue: {min: 0, max: 15}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}, 
    orange_ish: {chance: 1, hue: {min: 16, max: 40}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}, 
    yellow_ish: {chance: 1, hue: {min: 41, max: 73}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}, 
    green_ish: {chance: 1, hue: {min: 74, max: 150}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}, 
    teal_ish: {chance: 1, hue: {min: 151, max: 200}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}, 
    blue_ish: {chance: 1, hue: {min: 201, max: 260}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}, 
    purple_ish: {chance: 1, hue: {min: 261, max: 288}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}, 
    indigo_ish: {chance: 1, hue: {min: 289, max: 345}, saturation: {min: 13, max: 61}, lightness: {min: 25, max: 91}}
  },
  hairColor: {
    black: {chance: 1, hue: {min: 24, max: 36}, saturation: {min: 0, max: 10}, lightness: {min: 6, max: 31}}, 
    dark_brown: {chance: 1, hue: {min: 24, max: 36}, saturation: {min: 50, max: 90}, lightness: {min: 20, max: 30}}, 
    brown: {chance: 1, hue: {min: 24, max: 36}, saturation: {min: 30, max: 80}, lightness: {min: 30, max: 45}}, 
    light_brown: {chance: 1, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    blond: {chance: 1, hue: {min: 54, max: 60}, saturation: {min: 60, max: 86}, lightness: {min: 36, max: 70}}, 
    strawberry_blond: {chance: 1, hue: {min: 35, max: 52}, saturation: {min: 75, max: 100}, lightness: {min: 55, max: 65}}, 
    pale_blond: {chance: 1, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 70, max: 80}}, 
    auburn: {chance: 1, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}},
    light_red: {chance: 6, hue: {min: 0, max: 15}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    red: {chance: 6, hue: {min: 0, max: 15}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_red: {chance: 6, hue: {min: 0, max: 15}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_orange: {chance: 3, hue: {min: 16, max: 43}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    orange: {chance: 3, hue: {min: 16, max: 43}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_orange: {chance: 3, hue: {min: 16, max: 43}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_yellow: {chance: 3, hue: {min: 44, max: 89}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    yellow: {chance: 3, hue: {min: 44, max: 89}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_yellow: {chance: 3, hue: {min: 44, max: 89}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_green: {chance: 6, hue: {min: 90, max: 149}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    green: {chance: 6, hue: {min: 90, max: 149}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_green: {chance: 6, hue: {min: 90, max: 149}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_teal: {chance: 3, hue: {min: 150, max: 209}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    teal: {chance: 3, hue: {min: 150, max: 209}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_teal: {chance: 3, hue: {min: 150, max: 209}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_blue: {chance: 3, hue: {min: 210, max: 260}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    blue: {chance: 3, hue: {min: 210, max: 260}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_blue: {chance: 3, hue: {min: 210, max: 260}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_purple: {chance: 3, hue: {min: 261, max: 273}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    purple: {chance: 3, hue: {min: 261, max: 273}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_purple: {chance: 3, hue: {min: 261, max: 273}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
    light_indigo: {chance: 3, hue: {min: 274, max: 359}, saturation: {min: 70, max: 95}, lightness: {min:60, max:80}},
    indigo: {chance: 3, hue: {min: 274, max: 359}, saturation: {min: 70, max: 95}, lightness: {min:45, max:59}},
    dark_indigo: {chance: 3, hue: {min: 274, max: 359}, saturation: {min: 70, max: 95}, lightness: {min:25, max:44}},
  })

Race.create(name: "Goblin", modNum: 2, modDie:4, weightMod: 1, maleBaseWeight: 30, 
  femaleBaseWeight: 25, maleBaseHeight: 32, femaleBaseHeight: 30,
  adultAge: 13, middleAge: 20, oldAge: 30, venerableAge: 40, maxAge: 60,
  eyeColor: {light_red: {chance: 1, hue: 6, saturation: 80, lightness: 65},
    red: {chance: 1, hue: 6, saturation: 80, lightness: 50},
    dark_red: {chance: 1, hue: 6, saturation: 80, lightness: 35} 
    },
  skinColor: {
    light_gray: {chance: 10, hue: {min: 215, max: 245}, saturation: {min: 10, max: 40}, lightness: {min: 41, max: 55}}, 
    gray: {chance: 65, hue: {min: 215, max: 245}, saturation: {min: 10, max: 40}, lightness: {min: 26, max: 40}}, 
    dark_gray: {chance: 65, hue: {min: 215, max: 245}, saturation: {min: 10, max: 40}, lightness: {min: 20, max: 25}}
  },
  hairColor: {
    non_applicable: {chance: 1, hue: {}, saturation: {}, lightness: {}}
  })

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
  very_dark_blue: {chance: 10, hue: 210, saturation: 85, lightness: 15} 
  },
  skinColor: {
    pale: {chance: 10, hue: {min: 28, max: 48}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 65, hue: {min: 20, max: 36}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 15, hue: {min: 18, max: 34}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    olive: {chance: 7, hue: {min: 12, max: 28}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_brown: {chance: 2, hue: {min: 1, max: 18}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    black: {chance: 1, hue: {min: 213, max: 225}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}
  },
  hairColor: {
    black: {chance: 24, hue: {min: 24, max: 36}, saturation: {min: 0, max: 10}, lightness: {min: 6, max: 31}}, 
    dark_brown: {chance: 8, hue: {min: 24, max: 36}, saturation: {min: 50, max: 90}, lightness: {min: 20, max: 30}}, 
    brown: {chance: 8, hue: {min: 24, max: 36}, saturation: {min: 30, max: 80}, lightness: {min: 30, max: 45}}, 
    light_brown: {chance: 8, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    blond: {chance: 15, hue: {min: 54, max: 60}, saturation: {min: 60, max: 86}, lightness: {min: 36, max: 70}}, 
    strawberry_blond: {chance: 15, hue: {min: 35, max: 52}, saturation: {min: 75, max: 100}, lightness: {min: 55, max: 65}}, 
    pale_blond: {chance: 15, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 70, max: 80}}, 
    auburn: {chance: 6, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}}, 
    red: {chance: 4, hue: {min: 0, max: 15}, saturation: {min: 50, max: 95}, lightness: {min: 40, max: 65}}, 
    gray: {chance: 1, hue: {min: 0, max: 60}, saturation: {min: 0, max: 12}, lightness: {min: 40, max: 80}}, 
    white: {chance: 1, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 85, max: 95}}
  })

Race.create(name: "Half-Orc", modNum: 2, modDie:12, weightMod: 7, maleBaseWeight: 150, 
  femaleBaseWeight: 110, maleBaseHeight: 58, femaleBaseHeight: 53,
  adultAge: 15, middleAge: 30, oldAge: 45, venerableAge: 60, maxAge: 80,
  eyeColor: {amber: {chance: 6, hue: 35, saturation: 85, lightness: 45}, 
  black: {chance: 3, hue: 30, saturation: 80, lightness: 15}, 
  blue: {chance: 9, hue: 210, saturation: 85, lightness: 55}, 
  brown: {chance: 55, hue: 30, saturation: 80, lightness: 30},
  gray: {chance: 8, hue: 210, saturation: 30, lightness: 62}, 
  green: {chance: 8, hue: 115, saturation: 55, lightness: 55}, 
  hazel: {chance: 11, hue: 43, saturation: 38, lightness: 34} 
  },
  skinColor: {
    pale: {chance: 1, hue: {min: 28, max: 48}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 7, hue: {min: 20, max: 36}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 5, hue: {min: 18, max: 34}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    olive: {chance: 5, hue: {min: 12, max: 28}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_brown: {chance: 2, hue: {min: 1, max: 18}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    black: {chance: 1, hue: {min: 213, max: 225}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}},
    pale_green: {chance: 6, hue: {min: 85, max: 140}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair_green: {chance: 10, hue: {min: 85, max: 140}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_green: {chance: 14, hue: {min: 85, max: 140}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    medium_green: {chance: 25, hue: {min: 85, max: 140}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_green: {chance: 14, hue: {min: 85, max: 140}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    very_dark_green: {chance: 10, hue: {min: 85, max: 140}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}
  },
  hairColor: {
    black: {chance: 41, hue: {min: 24, max: 36}, saturation: {min: 0, max: 10}, lightness: {min: 6, max: 31}}, 
    dark_brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 50, max: 90}, lightness: {min: 20, max: 30}}, 
    brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 30, max: 80}, lightness: {min: 30, max: 45}}, 
    light_brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    blond: {chance: 3, hue: {min: 54, max: 60}, saturation: {min: 60, max: 86}, lightness: {min: 36, max: 70}}, 
    strawberry_blond: {chance: 3, hue: {min: 35, max: 52}, saturation: {min: 75, max: 100}, lightness: {min: 55, max: 65}}, 
    pale_blond: {chance: 3, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 70, max: 80}}, 
    auburn: {chance: 6, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}}, 
    red: {chance: 4, hue: {min: 0, max: 15}, saturation: {min: 50, max: 95}, lightness: {min: 40, max: 65}}, 
    gray: {chance: 1, hue: {min: 0, max: 60}, saturation: {min: 0, max: 12}, lightness: {min: 40, max: 80}}
  })

Race.create(name: "Halfling", modNum: 2, modDie:4, weightMod: 1, maleBaseWeight: 30, 
  femaleBaseWeight: 25, maleBaseHeight: 32, femaleBaseHeight: 30,
  adultAge: 22, middleAge: 50, oldAge: 75, venerableAge: 100, maxAge: 200,
  eyeColor: {amber: {chance: 12, hue: 35, saturation: 85, lightness: 45}, 
  black: {chance: 1, hue: 30, saturation: 80, lightness: 15}, 
  blue: {chance: 28, hue: 210, saturation: 85, lightness: 55}, 
  brown: {chance: 8, hue: 30, saturation: 80, lightness: 30}, 
  gray: {chance: 12, hue: 210, saturation: 30, lightness: 62}, 
  green: {chance: 27, hue: 115, saturation: 55, lightness: 55}, 
  hazel: {chance: 12, hue: 43, saturation: 38, lightness: 34} 
  },
  skinColor: {
    pale: {chance: 10, hue: {min: 28, max: 48}, saturation: {min: 13, max: 75}, lightness: {min: 82, max: 85}}, 
    fair: {chance: 65, hue: {min: 20, max: 36}, saturation: {min: 30, max: 59}, lightness: {min: 87, max: 91}}, 
    light_brown: {chance: 15, hue: {min: 18, max: 34}, saturation: {min: 36, max: 73}, lightness: {min: 76, max: 91}}, 
    olive: {chance: 7, hue: {min: 12, max: 28}, saturation: {min: 54, max: 74}, lightness: {min: 56, max: 91}},
    dark_brown: {chance: 2, hue: {min: 1, max: 18}, saturation: {min: 22, max: 61}, lightness: {min: 25, max: 67}}, 
    black: {chance: 1, hue: {min: 213, max: 225}, saturation: {min: 13, max: 19}, lightness: {min: 19, max: 25}}
  },
  hairColor: {
    black: {chance: 41, hue: {min: 24, max: 36}, saturation: {min: 0, max: 10}, lightness: {min: 6, max: 31}}, 
    dark_brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 50, max: 90}, lightness: {min: 20, max: 30}}, 
    brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 30, max: 80}, lightness: {min: 30, max: 45}}, 
    light_brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    blond: {chance: 3, hue: {min: 54, max: 60}, saturation: {min: 60, max: 86}, lightness: {min: 36, max: 70}}, 
    strawberry_blond: {chance: 3, hue: {min: 35, max: 52}, saturation: {min: 75, max: 100}, lightness: {min: 55, max: 65}}, 
    pale_blond: {chance: 3, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 70, max: 80}}, 
    auburn: {chance: 6, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}}, 
    red: {chance: 4, hue: {min: 0, max: 15}, saturation: {min: 50, max: 95}, lightness: {min: 40, max: 65}}, 
    gray: {chance: 1, hue: {min: 0, max: 60}, saturation: {min: 0, max: 12}, lightness: {min: 40, max: 80}}
  })

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
  },
  hairColor: {
    black: {chance: 41, hue: {min: 24, max: 36}, saturation: {min: 0, max: 10}, lightness: {min: 6, max: 31}}, 
    dark_brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 50, max: 90}, lightness: {min: 20, max: 30}}, 
    brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 30, max: 80}, lightness: {min: 30, max: 45}}, 
    light_brown: {chance: 13, hue: {min: 24, max: 36}, saturation: {min: 50, max: 70}, lightness: {min: 45, max: 50}},
    blond: {chance: 3, hue: {min: 54, max: 60}, saturation: {min: 60, max: 86}, lightness: {min: 36, max: 70}}, 
    strawberry_blond: {chance: 3, hue: {min: 35, max: 52}, saturation: {min: 75, max: 100}, lightness: {min: 55, max: 65}}, 
    pale_blond: {chance: 3, hue: {min: 54, max: 60}, saturation: {min: 60, max: 90}, lightness: {min: 70, max: 80}}, 
    auburn: {chance: 6, hue: {min: 15, max: 22}, saturation: {min: 50, max: 90}, lightness: {min: 30, max: 60}}, 
    red: {chance: 4, hue: {min: 0, max: 15}, saturation: {min: 50, max: 95}, lightness: {min: 40, max: 65}}, 
    gray: {chance: 1, hue: {min: 0, max: 60}, saturation: {min: 0, max: 12}, lightness: {min: 40, max: 80}}
  })