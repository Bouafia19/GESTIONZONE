json.extract! zone_activite, :id, :code_zone, :type_zone, :nom_zone, :commune, :wilaya, :num_arrete_creation, :dat_arrete_creation, :superf_total, :superf_cessible, :superf_vrd, :nbr_lots, :nbr_lot_attribues, :nbr_lot_cession, :nbr_lot_concession, :observation, :created_at, :updated_at
json.url zone_activite_url(zone_activite, format: :json)
