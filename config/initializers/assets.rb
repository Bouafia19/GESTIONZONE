# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( jquery-easing/jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( agency.min.js )
Rails.application.config.assets.precompile += %w( jqBootstrapValidation.js )
Rails.application.config.assets.precompile += %w( contact_me.js )
Rails.application.config.assets.precompile += %w( css/agency.min.css )
Rails.application.config.assets.precompile += %w( vendor/bootstrapa/css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( vendor/fontawesome-free/css/all.min.css )




Rails.application.config.assets.precompile += %w( css/sb-admin-2.min.css )
Rails.application.config.assets.precompile += %w( vendor/fontawesome-free/css/all.min.css )
Rails.application.config.assets.precompile += %w( datatables/jquery.dataTables.min.js )
Rails.application.config.assets.precompile += %w( datatables/dataTables.bootstrap4.min.js )
Rails.application.config.assets.precompile += %w( vendor/datatables/dataTables.bootstrap4.min.css )
Rails.application.config.assets.precompile += %w( js/demo/datatables-demo.js )


Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( bootstrap/js/bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( sb-admin-2.min.js )
Rails.application.config.assets.precompile += %w( chart.js/Chart.min.js )



Rails.application.config.assets.precompile += %w( chart.js/Chart.min.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-area-demo.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-pie-demo.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-bar-demo.js )





Rails.application.config.assets.precompile += %w( lib/leaflet.label.css )
Rails.application.config.assets.precompile += %w( lib/leaflet.label.js )
Rails.application.config.assets.precompile += %w( lib/L.Control.SlideMenu.css )
Rails.application.config.assets.precompile += %w( lib/L.Control.SlideMenu.js )
Rails.application.config.assets.precompile += %w( lib/leaflet-search.css )
Rails.application.config.assets.precompile += %w( lib/leaflet-search.js )
Rails.application.config.assets.precompile += %w( lib/L.Control.Heightgraph.css )
Rails.application.config.assets.precompile += %w( lib/L.Control.Heightgraph.js )
Rails.application.config.assets.precompile += %w( lib/example_mappings.js )
Rails.application.config.assets.precompile += %w( lib/leaflet.measure.js )
Rails.application.config.assets.precompile += %w( lib/leaflet.browser.print.min.js )
Rails.application.config.assets.precompile += %w( lib/leaflet-measure-path.js )
Rails.application.config.assets.precompile += %w( lib/leaflet-measure-path.css )
Rails.application.config.assets.precompile += %w( lib/leaflet.measure.css )
Rails.application.config.assets.precompile += %w( lib/leaflet.magnifyingglass.css )
Rails.application.config.assets.precompile += %w( lib/Control.MagnifyingGlass.css )
Rails.application.config.assets.precompile += %w( lib/leaflet.magnifyingglass.js )
Rails.application.config.assets.precompile += %w( lib/example_button.js )
Rails.application.config.assets.precompile += %w( lib/Control.Coordinates.css )
Rails.application.config.assets.precompile += %w( lib/Control.Coordinates.js )

Rails.application.config.assets.precompile += %w( ddtf.js )





Rails.application.config.assets.precompile += %w( lib/leaflet.table.css )
Rails.application.config.assets.precompile += %w( lib/leaflet.table.js )
Rails.application.config.assets.precompile += %w( lib/supagrid.css )
Rails.application.config.assets.precompile += %w( lib/supagrid.js )
#Rails.application.config.assets.precompile += %w( lib/leaflet-measure.js )
#Rails.application.config.assets.precompile += %w( lib/leaflet-measure.css )

#Rails.application.config.assets.precompile += %w( leaflet-measure.scss )

#web map
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/resources/css/ol.css )
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/resources/css/components.min.css )
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/app.css )

#Rails.application.config.assets.precompile += %w( SETIF_INVEST/full-debug.js )
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/app_prebuilt.js )
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/data/lyr_zi_setif_extension.js )
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/data/lyr_zi_el_eulma.js )

#Rails.application.config.assets.precompile += %w( SETIF_INVEST/data/lyr_zi_ouled_saber.js )
#Rails.application.config.assets.precompile += %w( SETIF_INVEST/data/lyr_zi_setif_ancienne.js )

#leaflet
Rails.application.config.assets.precompile += %w( lib/leaflet/leaflet.css )
Rails.application.config.assets.precompile += %w( lib/leaflet/leaflet.js )

Rails.application.config.assets.precompile += %w( lib/Leaflet.draw.drag-src.js )
Rails.application.config.assets.precompile += %w( lib/Leaflet.draw.drag.js )

Rails.application.config.assets.precompile += %w( lib/leaflet.ajax.min.js )
#Rails.application.config.assets.precompile += %w( lib/map.js )

#openlayers
Rails.application.config.assets.precompile += %w( openlayers/style.css )

Rails.application.config.assets.precompile += %w( openlayers/OpenLayers/theme/default/style.css )
Rails.application.config.assets.precompile += %w( openlayers/OpenLayers.js )
Rails.application.config.assets.precompile += %w( openlayers/web-map.js )

Rails.application.config.assets.precompile += %w( vendor/public/zone_ind_7.json )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
