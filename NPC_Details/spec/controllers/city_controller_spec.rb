require 'rails_helper'


  describe CitiesController do
    context "#parentOldEnough?" do
      context "parent and child same age" do
       it "returns false" do
        human = create(:race_human)
        parent = create(:npc_doe, race: human)
        child = create(:npc_doe, race: human)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(false)
        end
      end
      context "parent 1 year older than child" do
       it "returns false" do
        human = create(:race_human)
        parent = create(:npc_doe, race: human, age: 40)
        child = create(:npc_doe, race: human, age: 39)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(false)
        end
      end
      context "parent 1 year younger than child" do
       it "returns false" do
        human = create(:race_human)
        parent = create(:npc_doe, race: human, age: 38)
        child = create(:npc_doe, race: human, age: 39)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(false)
        end
      end
      context "human parent 16 year older than child" do
       it "returns true" do
        human = create(:race_human)
        parent = create(:npc_doe, race: human, age: 56)
        child = create(:npc_doe, race: human, age: 40)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(true)
        end
      end
      context "human parent 16 year younger than child" do
       it "returns false" do
        human = create(:race_human)
        parent = create(:npc_doe, race: human, age: 24)
        child = create(:npc_doe, race: human, age: 40)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(false)
        end
      end
      context "human parent 16 year older than dwarf child" do
       it "returns true" do
        human = create(:race_human)
        dwarf = create(:race_dwarf)
        parent = create(:npc_doe, race: human, age: 61)
        child = create(:npc_doe, race: dwarf, age: 45)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(true)
        end
      end
      context "human parent 11 year younger than dwarf child" do
       it "returns true" do
        human = create(:race_human)
        dwarf = create(:race_dwarf)
        parent = create(:npc_doe, race: human, age: 32)
        child = create(:npc_doe, race: dwarf, age: 43)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(true)
        end
      end
      context "human parent 12 year younger than dwarf child" do
       it "returns true" do
        human = create(:race_human)
        dwarf = create(:race_dwarf)
        parent = create(:npc_doe, race: human, age: 31)
        child = create(:npc_doe, race: dwarf, age: 43)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(false)
        end
      end
      context "human parent 82 year younger than elf child" do
       it "returns true" do
        human = create(:race_human)
        elf = create(:race_elf)
        parent = create(:npc_doe, race: human, age: 32)
        child = create(:npc_doe, race: elf, age: 114)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(true)
        end
      end
      context "human parent 83 year younger than elf child" do
       it "returns true" do
        human = create(:race_human)
        elf = create(:race_elf)
        parent = create(:npc_doe, race: human, age: 31)
        child = create(:npc_doe, race: elf, age: 114)
        expect(controller.send(:parentOldEnough?, parent, child)).to  eq(false)
        end
      end
    end



    context "#geneticallyPossible?" do
      context "parent and child same race" do
       it "returns true" do
        human = create(:race_human)
        parent = create(:npc_doe, race: human)
        child = create(:npc_doe, race: human)
        expect(controller.send(:geneticallyPossible?, parent, child, false)).to  eq(true)
        end
      end
      context "parent and child different race and not adopted" do
       it "returns false" do
        human = create(:race_human)
        elf = create(:race_elf)
        parent = create(:npc_doe, race: human)
        child = create(:npc_doe, race: elf)
        expect(controller.send(:geneticallyPossible?, parent, child, false)).to  eq(false)
        end
      end
      context "parent and child different race and is adopted" do
       it "returns true" do
        human = create(:race_human)
        elf = create(:race_elf)
        parent = create(:npc_doe, race: human)
        child = create(:npc_doe, race: elf)
        expect(controller.send(:geneticallyPossible?, parent, child, true)).to  eq(true)
        end
      end
    end



    context "#tooCloseToPreviousChildsAge?" do
      context "child and previous child same age" do
       it "returns true" do
        human = create(:race_human)
        previousChild = create(:npc_doe, race: human)
        child = create(:npc_doe, race: human)
        expect(controller.send(:tooCloseToPreviousChildsAge?, child, previousChild, false)).to  eq(true)
        end
      end
      context "child and previous child same age and adopted" do
       it "returns false" do
        human = create(:race_human)
        previousChild = create(:npc_doe, race: human)
        child = create(:npc_doe, race: human)
        expect(controller.send(:tooCloseToPreviousChildsAge?, child, previousChild, true)).to  eq(false)
        end
      end
      context "child is older than previous child" do
       it "returns false" do
        human = create(:race_human)
        previousChild = create(:npc_doe, race: human, age: 30)
        child = create(:npc_doe, race: human, age: 31)
        expect(controller.send(:tooCloseToPreviousChildsAge?, child, previousChild, false)).to  eq(false)
        end
      end
      context "child is younger than previous child" do
       it "returns false" do
        human = create(:race_human)
        previousChild = create(:npc_doe, race: human, age: 30)
        child = create(:npc_doe, race: human, age: 29)
        expect(controller.send(:tooCloseToPreviousChildsAge?, child, previousChild, false)).to  eq(false)
        end
      end
    end



    context "#noOnesChild?" do
      context "desendants list is empty" do
       it "returns true" do
        human = create(:race_human)
        child = create(:npc_doe, race: human)
        expect(controller.send(:noOnesChild?, child)).to  eq(true)
        end
      end
      context "desendants list has a different child in it" do
       it "returns true" do
        human = create(:race_human)
        otherChild = create(:npc, race: human)
        otherChild.children << otherChild
        child = create(:npc_doe, race: human)
        expect(controller.send(:noOnesChild?, child)).to  eq(true)
        end
      end
      context "desendants list has child in it" do
       it "returns false" do
        human = create(:race_human)
        otherChild = create(:npc, race: human)
        child = create(:npc_doe, race: human)
        otherChild.children << child
        expect(controller.send(:noOnesChild?, child)).to  eq(false)
        end
      end
    end


    context "#validSpouse?" do
      context "one male one female" do
       it "returns true" do
        human = create(:race_human)
        mother = create(:npc_doe, race: human, sex:"Female")
        father = create(:npc_doe, race: human, sex:"Male")
        expect(controller.send(:validSpouse?, mother, father)).to  eq(true)
        end
      end
      context "one male one male" do
       it "returns false" do
        human = create(:race_human)
        mother = create(:npc_doe, race: human, sex:"Male")
        father = create(:npc_doe, race: human, sex:"Male")
        expect(controller.send(:validSpouse?, mother, father)).to  eq(false)
        end
      end
      context "one female one female" do
       it "returns false" do
        human = create(:race_human)
        mother = create(:npc_doe, race: human, sex:"Female")
        father = create(:npc_doe, race: human, sex:"Female")
        expect(controller.send(:validSpouse?, mother, father)).to  eq(false)
        end
      end
      context "one male one female and already someones spouse" do
       it "returns false" do
        human = create(:race_human)
        mother = create(:npc_doe, race: human, sex:"Female")
        father = create(:npc_doe, race: human, sex:"Male")
        expect(controller.send(:validSpouse?, mother, father)).to  eq(false)
        end
      end
    end


  end