namespace :import do
  task(:heros => :environment) do
    Rails.logger.info 'Started importing Heros'
    p 'Started importing Heros'
    heros = JSON.parse(File.read('data/hero.json'))
    data = heros['data']
    data.each do |hero|
      hero_params  = {}
      hero_params[:external_id] = hero['id']
      hero_params[:name] = hero['name']
      hero_params[:real_name] = hero['real_name']
      hero_params[:armour] = hero['armour']
      hero_params[:health] = hero['health']
      hero_params[:shield] = hero['shield']
      Rails.logger.info "Importing hero with external_id: #{hero['id']}"
      p "Importing hero with external_id: #{hero['id']}"
      Hero.where(external_id: hero['id']).first_or_create(hero_params)
    end
  end

  task(:abilities => :environment) do
    p 'Started importing abilities'
    abilities = JSON.parse(File.read('data/abilities.json'))
    data = abilities['data']
    data.each do |ability|
      ability_params  = {}
      hero = Hero.find_by_external_id(ability['hero']['id'])
      ability_object = Ability.find_by_external_id(ability['id'])
      if hero && ability_object.nil?
        p "Importing hero with external_id: #{ability['id']}"
        ability_params[:external_id] = ability['id']
        ability_params[:hero_id] = hero.id
        ability_params[:name] = ability['name']
        ability_params[:description] = ability['description']
        Ability.create!(ability_params)
      end
    end
  end
end