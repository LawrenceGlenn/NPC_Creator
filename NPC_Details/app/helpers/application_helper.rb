module ApplicationHelper
  

  def randomSex
    return "Male" if rand(2) == 0
    "Female"
  end
end
