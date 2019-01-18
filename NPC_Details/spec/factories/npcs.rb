FactoryGirl.define do

  factory :npc do

    factory :npc_joe do
      name  "Joe"
      age 40
      sex "Female"
      haircolor ""
      eyecolor  ""
      skincolor ""
      level 3
      height  70
      weight  162
      alignment "CG"
    end
  end
end