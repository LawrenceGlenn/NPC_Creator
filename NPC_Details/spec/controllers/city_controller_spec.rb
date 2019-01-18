require 'rails_helper'


  describe CitiesController do
    context "#validChild?" do
      context "with valid attributes" do
       it "returns true" do
        expect(controller.send(:validChild?, Npc.find(1), Npc.find(2), Npc.find(3))).to  eq(false)
#         post :create, city: attributes_for(:city)
#         expect(CitiesController.validChild?()).to eq(true)
       end
     end
    end
  end
