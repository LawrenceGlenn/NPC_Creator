require "yaml"
require 'weightedSelection.rb'

class MarkovModel

  def make_model(data, order = 1)
    output = Hash.new{|hsh,key| hsh[key] = {} }
    data.each_index do |ind|
      res_key = []
      if (ind-order+1)>=0 then
        (order-1).downto(0) { |i| res_key << data[ind-i]}
        output[res_key].store(data[ind+1], output[res_key].key?(data[ind+1])? output[res_key][data[ind+1]]+1 : 1) unless data[ind+1].nil?
      end
    end
    output
  end

  def generate_random_result(data, order = 1, model = make_model(data,order))
    outputList = []
    unless model.empty? then
    (1..order).each { outputList << "$begin$"}
      until outputList.last == "$end$" do
        outputList << WeightedSelection.choose(model[outputList.last(order)])
      end
    end
    outputList
  end

end