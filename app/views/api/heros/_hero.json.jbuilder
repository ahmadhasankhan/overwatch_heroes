json.extract! hero, :id, :name, :real_name, :health, :armour, :shield, :created_at, :updated_at
json.url api_hero_url(hero, format: :json)
