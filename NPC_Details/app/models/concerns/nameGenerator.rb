  require 'yaml'
  require 'weightedSelection.rb'
  require 'markovModel.rb'

  class NameGenerator


  def dataToList(order=1, race, sex, source)
    output = []
    i =0
    YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/names.yml").uniq.each do |name|
      i = i +1
    puts "race in gen data from file #{name[1]}"
    puts "race in gen data to compare to #{race.downcase}"
    puts "how many checks #{i}"
      if (race.downcase.eql?("any") || name[1].eql?(race.downcase)) && (sex.downcase.eql?("any") || name[2].eql?(sex.downcase)) && (source.downcase.eql?("any") || name[3].eql?(source.downcase))
        puts "got past the cheks in data to list"
        (1..order).each{output << "$begin$"}
        voul = ""
        (name[0]).chomp.downcase.each_char do |char|
          voul = voul + char
          if char.match(/[^\x00-\x7F]|[aeiou]/) || (name[0]).chomp.downcase.last.eql?(char) then
            output << voul
            voul = ""
          end
        end
        (1..order).each{output << "$end$"}
      end
    end
    output
  end

  def listToProbability
    output = {}
    list = dataToList
    list.each do |item|
      output[item] = list.count(item)
    end
    output
  end

  def generateName(race = "any", sex = "any", source = "any")
    order = 2
    puts "race in gen name #{race}"
    nam = MarkovModel.new.generate_random_result(dataToList(order, race, sex, source), order)
    nam[order..nam.length-2].join("").capitalize

  end

end