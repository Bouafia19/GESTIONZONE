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






# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
