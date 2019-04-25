# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( vendor/jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( vendor/bootstrap/js/bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-easing/jquery.easing.min.js )

Rails.application.config.assets.precompile += %w( agency.min.js )

Rails.application.config.assets.precompile += %w( jqBootstrapValidation.js )
Rails.application.config.assets.precompile += %w( contact_me.js )

Rails.application.config.assets.precompile += %w( css/agency.min.css )

Rails.application.config.assets.precompile += %w( css/sb-admin-2.min.css )

Rails.application.config.assets.precompile += %w( vendor/datatables/dataTables.bootstrap4.min.css )
Rails.application.config.assets.precompile += %w( vendor/datatables/jquery.dataTables.min.js )




Rails.application.config.assets.precompile += %w( jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( bootstrap/js/bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( jquery-easing/jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( sb-admin-2.min.js )
Rails.application.config.assets.precompile += %w( chart.js/Chart.min.js )


Rails.application.config.assets.precompile += %w( vendor/datatables/jquery.dataTables.min.js )
Rails.application.config.assets.precompile += %w( vendor/datatables/dataTables.bootstrap4.min.js )




Rails.application.config.assets.precompile += %w( resources/ol.css )
Rails.application.config.assets.precompile += %w( resources/horsey.min.css )
Rails.application.config.assets.precompile += %w( resources/ol3-search-layer.min.css )
Rails.application.config.assets.precompile += %w( resources/ol3-layerswitcher.css )
Rails.application.config.assets.precompile += %w( resources/qgis2web.css )



Rails.application.config.assets.precompile += %w( resources/qgis2web_expressions.js )
Rails.application.config.assets.precompile += %w( resources/polyfills.js )
Rails.application.config.assets.precompile += %w( resources/functions.js )
Rails.application.config.assets.precompile += %w( resources/ol-debug.js )

Rails.application.config.assets.precompile += %w( resources/horsey.min.js )
Rails.application.config.assets.precompile += %w( resources/ol3-search-layer.min.js )
Rails.application.config.assets.precompile += %w( resources/ol3-layerswitcher.js )

Rails.application.config.assets.precompile += %w( layers/Parcellaire_ZI_SETIF__0.js )
Rails.application.config.assets.precompile += %w( layers/investisseurs_1.js )
Rails.application.config.assets.precompile += %w( styles/Parcellaire_ZI_SETIF__0_style.js )
Rails.application.config.assets.precompile += %w( styles/investisseurs_1_style.js )

Rails.application.config.assets.precompile += %w( layers/layers.js )
Rails.application.config.assets.precompile += %w( resources/qgis2web.js )
Rails.application.config.assets.precompile += %w( resources/Autolinker.min.js )




#ouled saber
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/ol.css )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/horsey.min.css )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/ol3-search-layer.min.css )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/ol3-layerswitcher.css )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/qgis2web.css )



Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/qgis2web_expressions.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/polyfills.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/functions.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/ol-debug.js )

Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/horsey.min.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/ol3-search-layer.min.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/ol3-layerswitcher.js )

Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/layers/ZI_OULED_SABER_0.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/styles/ZI_OULED_SABER_0_style.js )

Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/layers/layers.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/qgis2web.js )
Rails.application.config.assets.precompile += %w( ZI_OULED_SABER/resources/Autolinker.min.js )


#el eulma
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/ol.css )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/horsey.min.css )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/ol3-search-layer.min.css )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/ol3-layerswitcher.css )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/qgis2web.css )



Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/qgis2web_expressions.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/polyfills.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/functions.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/ol-debug.js )

Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/horsey.min.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/ol3-search-layer.min.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/ol3-layerswitcher.js )

Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/layers/ZI_EL_EULMA_0.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/styles/ZI_EL_EULMA_0_style.js )

Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/layers/layers.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/qgis2web.js )
Rails.application.config.assets.precompile += %w( ZI_EL_EULMA/resources/Autolinker.min.js )


#extension
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/ol.css )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/horsey.min.css )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/ol3-search-layer.min.css )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/ol3-layerswitcher.css )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/qgis2web.css )



Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/qgis2web_expressions.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/polyfills.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/functions.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/ol-debug.js )

Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/horsey.min.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/ol3-search-layer.min.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/ol3-layerswitcher.js )

Rails.application.config.assets.precompile += %w( ZI_EXTENSION/layers/ZI_EXTENSION_0.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/styles/ZI_EXTENSION_0_style.js )

Rails.application.config.assets.precompile += %w( ZI_EXTENSION/layers/layers.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/qgis2web.js )
Rails.application.config.assets.precompile += %w( ZI_EXTENSION/resources/Autolinker.min.js )

#ancienne
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/ol.css )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/horsey.min.css )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/ol3-search-layer.min.css )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/ol3-layerswitcher.css )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/qgis2web.css )



Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/qgis2web_expressions.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/polyfills.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/functions.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/ol-debug.js )

Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/horsey.min.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/ol3-search-layer.min.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/ol3-layerswitcher.js )

Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/layers/ZI_ANCIENNE_0.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/styles/ZI_ANCIENNE_0_style.js )

Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/layers/layers.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/qgis2web.js )
Rails.application.config.assets.precompile += %w( ZI_ANCIENNE/resources/Autolinker.min.js )


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
