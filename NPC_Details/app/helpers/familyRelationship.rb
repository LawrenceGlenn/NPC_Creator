module familyRelationship

  def self.assignFamilyRelationships
      npcList = Npc.order(age: :desc).find(@city.npc_ids)
      npcList.each_with_index do |parent, index|
        totalNumChildren = rand(6)
        numChildren = 0
        childIndex = index+1<npcList.size ? index+1 : index
        if parent.sex == "Female"
          while numChildren<totalNumChildren && childIndex<npcList.size do
            adopted = rand(50) == 0 ? true : false
            if validChild?(parent,npcList[childIndex],npcList[childIndex-1], adopted)
              parent.children << npcList[childIndex]
              numChildren = numChildren+1
            end
            childIndex = childIndex +1
          end
        end
      end
    end

    def self.validChild?(parent, child, previousChild, adopted)
      parentOldEnough?(parent,child) and 
      geneticallyPossible?(parent, child, adopted) and
      noOnesChild?(child) and
      ! tooCloseToPreviousChildsAge?(child,previousChild,adopted)
    end

    def self.parentOldEnough?(parent, child)
      parent.age - child.age + child.race.adultAge >= 2*parent.race.adultAge
    end

    def self.geneticallyPossible?(parent, child, adopted)
      parent.race_id == child.race_id or adopted
    end

    def self.noOnesChild?(child)
      NpcRelationship.where(child_id: child.id).empty?
    end

    def self.tooCloseToPreviousChildsAge?(child, previousChild, adopted)
      previousChild.age == child.age and !adopted
    end

    def self.validSpouse?(spouse1, spouse2)
      alterative = rand(10) == 0 ? true : false
      compatibleSpouse?(spouse1,spouse2, alterative) and notMarried?(spouse1, spouse2)
    end

    def self.compatibleSpouse?(spouse1, spouse2, alterative)
      spouse1.sex != spouse2.sex or alterative
    end

    def self.notMarried?(spouse1, spouse2)
      puts spouse1.spouse.inspect
    end

end