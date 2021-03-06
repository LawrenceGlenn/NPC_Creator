  require 'yaml'
  require 'weightedSelection.rb'
  require 'markovModel.rb'

  class NameGenerator
  @@file = YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/names.yml").uniq

  def dataToList(order=1, race, sex, source)
    output = []
    @@file.each do |name|
      if check_name_for_race_sex_source(name,race,sex,source) then
        (1..order).each{output << "$begin$"}
          case race.downcase
            when "human"
              output.concat(split_by_vowel(name[0]))
            when "elf"
              output.concat(split_by_vowel(name[0]))
            when "half-elf"
              output.concat(split_by_vowel(name[0]))
            when "dwarf"
              output.concat(split_by_vowel(name[0]))
            when "halfling"
              output.concat(split_by_vowel(name[0]))
            when "gnome"
              output.concat(split_by_vowel(name[0]))
            when "half-orc"
              output.concat(split_by_vowel(name[0]))
            when "goblin"
              output.concat(split_by_vowel(name[0]))
            else
              output.concat(split_by_vowel(name[0]))
          end
        (1..order).each{output << "$end$"}
      end
    end
    output
  end

  def generateName(race = "any", sex = "any", source = "any")
    order = 2
    nam = MarkovModel.new.generate_random_result(dataToList(order, race, sex, source), order)

    nam[order..nam.length-2].join("").capitalize

  end

  def filterElfName(name)
    temp_name = name.dup
    split_by_vowel(name)
  end

  def split_by_vowel(name)
    firstVowel = false
    output = []
    str = ""
    (name).chomp.downcase.each_char.with_index do |char, index|
      if char.match(/[^\x00-\x7F]|[aeiou]/) then
        if firstVowel then
          output << str
          str = ""
        end
        firstVowel = true
      end
      str = str + char
      output << str if (name).chomp.downcase.last.eql?(char)
    end
    output
  end

  def filterHumanName(name)
    split_by_vowel(name)
  end

  def filterNameByCharacter(name)
    output = []
    (name).chomp.downcase.each_char do |char|
      output << char
    end
    output
  end

  def check_name_for_race_sex_source(arr, race, sex, source)
    (arr[1].eql?(race.downcase) || arr[1].eql?("any") || 
    (race.eql?("half-elf") && (arr[1].eql?("elf") || arr[1].eql?("human"))) || 
    (race.eql?("half-orc") && (arr[1].eql?("orc") || arr[1].eql?("human")))) && 
        (sex.downcase.eql?("any") || arr[2].eql?(sex.downcase) ||
        (race.eql?("elf") && rand(6) == 0)) && 
        (source.downcase.eql?("any") || arr[3].eql?(source.downcase))
  end

end