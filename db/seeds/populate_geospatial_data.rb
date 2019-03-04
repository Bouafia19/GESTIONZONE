#!connection = ActiveRecord::Base.connection()
=begin
from_country_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shapefiles', 'gadm36_DZA_0.shp')} countries_ref`
connection.execute "drop table if exists countries_ref"
connection.execute from_country_shp_sql
connection.execute <<-SQL
    insert into countries(name, iso_code, geom, created_at, updated_at)
      select name_0, gid_0, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from countries_ref
SQL
connection.execute "drop table countries_ref"


algeria_id = Country.all.first.id

from_province_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shapefiles', 'gadm36_DZA_1.shp')} states_ref`
connection.execute "drop table if exists states_ref"
connection.execute from_province_shp_sql
connection.execute <<-SQL
    insert into states(country_id, name, hasc_code, state_type, geom, created_at, updated_at)
      select #{algeria_id}, name_1, hasc_1, engtype_1, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from states_ref
SQL
connection.execute "drop table states_ref"


puts 'Deleting all previous geographical data...'



State.delete_all
Region.delete_all
Country.delete_all

connection.execute "ALTER SEQUENCE states_id_seq RESTART WITH 1"
connection.execute "ALTER SEQUENCE regions_id_seq RESTART WITH 1"
connection.execute "ALTER SEQUENCE countries_id_seq RESTART WITH 1"

puts

if Country.all.count == 0
  puts 'Importing data for Algeria'

  from_country_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shapefiles', 'gadm36_DZA_0.shp')} countries_ref`
  connection.execute "drop table if exists countries_ref"
  connection.execute from_country_shp_sql
  connection.execute <<-SQL
      insert into countries(name, iso_code, geom, created_at, updated_at)
        select name_0, gid_0, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from countries_ref
  SQL
  connection.execute "drop table countries_ref"
end

algeria_id = Country.all.first.id
puts "Algeria country ID = #{algeria_id}"

puts

if State.all.count == 0
  puts 'Importing data for Algeria States'

  from_province_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shapefiles', 'gadm36_DZA_1.shp')} states_ref`
  connection.execute "drop table if exists states_ref"
  connection.execute from_province_shp_sql
  connection.execute <<-SQL
      insert into states(country_id, name, hasc_code, state_type, geom, created_at, updated_at)
        select #{algeria_id}, name_1, hasc_1, engtype_1, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from states_ref
  SQL
  connection.execute "drop table states_ref"

  puts
end
=end