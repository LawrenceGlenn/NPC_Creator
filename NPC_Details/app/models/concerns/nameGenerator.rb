  require 'yaml'
  require 'weightedSelection.rb'
  require 'markovModel.rb'

  class NameGenerator

  SAMPLE_NAMES = ["Joni", "Bob", "Will", "Tim", "Anna", "william", "Aragorn" , "Tirth"]


  def dataToList(order=1)
    output = []
    YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/human_male_tolkien_names.yml").uniq.each do |name|
      (1..order).each{output << "$begin$"}
      voul = ""
      (name).chomp.downcase.each_char do |char|
        voul = voul + char
        if char.match(/[^\x00-\x7F]|[aeiou]/) || (name).chomp.downcase.last.eql?(char) then
          output << voul
          voul = ""
        end
      end
      (1..order).each{output << "$end$"}
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

  def generateName
    order = 1
    nam = MarkovModel.new.generate_random_result(dataToList(order), order)

    nam[order..nam.length-2].join("").capitalize



#    lastItem = "$"
#    list = listToProbability
#    min = YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/human_male_tolkien_names.yml").uniq.min_by(&:length).length
#    max = YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/human_male_tolkien_names.yml").uniq.max_by(&:length).length
#    output = ""
#      until lastItem.chars.last == "$" && lastItem.length > 1 do
#        selected = {}
#        list.each do |key, value|
#          if output.length < min
#            selected[key] = value if lastItem.chars.last == key.chars.first && key.chars.last != "$"
#          elsif output.length >= max-1
#            selected[key] = value if lastItem.chars.last == key.chars.first && key.chars.last == "$"
#          else
#            selected[key] = value if lastItem.chars.last == key.chars.first
#          end
#        end
#        lastItem = selected.empty? ?  "$$" : WeightedSelection.choose(selected)
#        output = output + lastItem[1..lastItem.length-1]
#      end
#      output[0..output.length-2]
  end

end