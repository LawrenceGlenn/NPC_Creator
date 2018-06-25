json.extract! npc, :id, :name, :nickname, :surname, :age, :sex, :haircolor, :eyecolor, :skincolor, :notes, :level, :height, :weight, :created_at, :updated_at
json.url npc_url(npc, format: :json)
