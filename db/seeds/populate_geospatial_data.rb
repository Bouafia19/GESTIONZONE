connection = ActiveRecord::Base.connection()

from_ancienne_shp_sql = `shp2pgsql -c -g geom -W UTF8 -s 3857 #{Rails.root.join('db', 'shapefiles', 'ZI_SETIF_ANCIENNE.shp')} anciennes_ref`
connection.execute "drop table if exists anciennes_ref"
connection.execute from_ancienne_shp_sql
connection.execute <<-SQL
    insert into anciennes( n_dossier, r_socia_ar, r_socia_fr, geom, created_at, updated_at)
      select  n_dossier, r_socia_ar, r_socia_fr, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from anciennes_ref
SQL
connection.execute "drop table anciennes_ref"


zone_id = Ancienne.all.first.id
=begin
from_province_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shapefiles', 'gadm36_DZA_1.shp')} states_ref`
connection.execute "drop table if exists states_ref"
connection.execute from_province_shp_sql
connection.execute <<-SQL
    insert into states(Ancienne_id, name, hasc_code, state_type, geom, created_at, updated_at)
      select #{zone_id}, name_1, hasc_1, engtype_1, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from states_ref
SQL
connection.execute "drop table states_ref"

=end
puts 'Deleting all previous geographical data...'



#State.delete_all
#Region.delete_all
Ancienne.delete_all

#connection.execute "ALTER SEQUENCE states_id_seq RESTART WITH 1"
#connection.execute "ALTER SEQUENCE regions_id_seq RESTART WITH 1"
connection.execute "ALTER SEQUENCE anciennes_id_seq RESTART WITH 1"

puts

if Ancienne.all.count == 0
  puts 'Importing data for zone'

  from_ancienne_shp_sql = `shp2pgsql -c -g geom -W UTF8 -s 3857 #{Rails.root.join('db', 'shapefiles', 'ZI_SETIF_ANCIENNE.shp')} anciennes_ref`
  connection.execute "drop table if exists anciennes_ref"
  connection.execute from_ancienne_shp_sql
  connection.execute <<-SQL
      insert into anciennes( n_dossier, r_socia_ar, r_socia_fr, geom, created_at, updated_at)
        select  n_dossier, r_socia_ar, r_socia_fr, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from anciennes_ref
  SQL
  connection.execute "drop table anciennes_ref"
end

zone_id = Ancienne.all.first.id
puts "zone Ancienne ID = #{zone_id}"

puts
=begin
if State.all.count == 0
  puts 'Importing data for zone States'

  from_province_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shapefiles', 'gadm36_DZA_1.shp')} states_ref`
  connection.execute "drop table if exists states_ref"
  connection.execute from_province_shp_sql
  connection.execute <<-SQL
      insert into states(Ancienne_id, name, hasc_code, state_type, geom, created_at, updated_at)
        select #{zone_id}, name_1, hasc_1, engtype_1, geom, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP from states_ref
  SQL
  connection.execute "drop table states_ref"

  puts
end
=end
