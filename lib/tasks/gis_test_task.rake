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
      feature = factory.feature s.geom
      puts 'Generating hash'
      hash = RGeo::GeoJSON.encode feature
      puts 'Writing JSON file'
      File.open("public/algeria_state_#{s.id}.json", 'w') {|file| file.write hash.to_json}
    end
  end

end