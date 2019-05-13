namespace :gis_test_task do

  desc "creates json for Algeria"

  task create_json: :environment do

    require 'rgeo'

    puts 'Getting data for Algeria'
    algeria = Country.first
    puts 'Creating RGeo factory'
    factory = RGeo::GeoJSON::EntityFactory.instance
    puts 'Creating feature'
    feature = factory.feature algeria.geom
    puts 'Generating hash'
    hash = RGeo::GeoJSON.encode feature
    puts 'Writing JSON file'
    File.open('public/algeria.json', 'w') {|file| file.write hash.to_json}


  end

  desc "creates json for Algeria states"
  task create_state_json: :environment do
    require 'rgeo'

    puts 'Getting data for all the states'
    states = State.where(:country_id => 1)
    puts 'Creating RGeo factory'
    factory = RGeo::GeoJSON::EntityFactory.instance

    states.each do |s|
      puts "Creating feature for #{s.hasc_code}"
      feature = (factory.feature s.geom, s.name)

      puts 'Generating hash'
      hash = RGeo::GeoJSON.encode feature
      puts 'Writing JSON file'
      File.open("public/algeria_state_#{s.id}.json", 'w') {|file| file.write hash.to_json}
    end
  end


  desc "creates json for Eulma"
  task create_eulma_json: :environment do
    require 'rgeo'

    puts 'Getting data for all Eulma'
    lors = Lor.all

    puts 'Creating RGeo factory'
    factory = RGeo::GeoJSON::EntityFactory.instance

     lors.each do |s|
       puts "Creating feature for #{s.id}"
      feature = (factory.feature s.geom, s.objectid)
    puts 'Generating hash'
    hash = RGeo::GeoJSON.encode feature
      puts 'Writing JSON file'
      File.open("public/eulma_lors_#{s.id}.json", 'w') {|file| file.write hash.to_json}
     end
  end

  desc "creates json for Extension"
  task create_extension_json: :environment do
    require 'rgeo'

    puts 'Getting data for all Extension'
    extensions = Extension.all

    puts 'Creating RGeo factory'
    factory = RGeo::GeoJSON::EntityFactory.instance

    extensions.each do |s|
      puts "Creating feature for #{s.id}"
      feature = (factory.feature s.geom, s.r_socia_fr)
      puts 'Generating hash'
      hash = RGeo::GeoJSON.encode feature
      puts 'Writing JSON file'
      File.open("public/extension_#{s.id}.json", 'w') {|file| file.write hash.to_json}
    end
  end


  desc "creates json for Ancienne"
  task create_ancienne_json: :environment do
    require 'rgeo'

    puts 'Getting data for all Ancienne'
    anciennes = Ancienne.all

    puts 'Creating RGeo factory'
    factory = RGeo::GeoJSON::EntityFactory.instance

    anciennes.each do |s|
      puts "Creating feature for #{s.id}"
      feature = (factory.feature s.geom, s.r_socia_fr)
      puts 'Generating hash'
      hash = RGeo::GeoJSON.encode feature
      puts 'Writing JSON file'
      File.open("public/ancienne_#{s.id}.json", 'w') {|file| file.write hash.to_json}
    end
  end

  desc "creates json for Saber"
  task create_saber_json: :environment do
    require 'rgeo'

    puts 'Getting data for all Saber'
    sabers = Saber.all

    puts 'Creating RGeo factory'
    factory = RGeo::GeoJSON::EntityFactory.instance

    sabers.each do |s|
      puts "Creating feature for #{s.id}"
      feature = (factory.feature s.geom, s.r_socia_fr)
      puts 'Generating hash'
      hash = RGeo::GeoJSON.encode feature
      puts 'Writing JSON file'
      File.open("public/saber_#{s.id}.json", 'w') {|file| file.write hash.to_json}
    end
  end
end
