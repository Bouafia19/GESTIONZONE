# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_23_140742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "postgis_topology"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "iso_code"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geom"], name: "index_countries_on_geom", using: :gist
    t.index ["iso_code"], name: "index_countries_on_iso_code", unique: true
    t.index ["name"], name: "index_countries_on_name", unique: true
  end

  create_table "countries_ref", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "gid_0", limit: 80
    t.string "name_0", limit: 80
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "gadm36_dza_0", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "gid_0", limit: 80
    t.string "name_0", limit: 80
    t.geometry "geom", limit: {:srid=>0, :type=>"multi_polygon"}
    t.index ["geom"], name: "gadm36_dza_0_geom_idx", using: :gist
  end

  create_table "hors_zones", force: :cascade do |t|
    t.string "code_zone"
    t.string "type_zone"
    t.string "nom_zone"
    t.string "commune"
    t.string "wilaya"
    t.integer "num_arrete_creation"
    t.date "dat_arrete_creation"
    t.float "superf_total"
    t.float "superf_cessible"
    t.float "superf_vrd"
    t.integer "nbr_lots"
    t.integer "nbr_lot_attribues"
    t.integer "nbr_lot_cession"
    t.integer "nbr_lot_concession"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investisseurs", force: :cascade do |t|
    t.integer "num_dossier"
    t.date "date_depot_demande"
    t.string "raison_sociale_arabe"
    t.string "nom_prenom_gerant_arabe"
    t.string "raison_sociale_francais"
    t.string "nom_prenom_gerant_francais"
    t.string "adresse"
    t.integer "num_telephone"
    t.integer "fax"
    t.string "email"
    t.string "intitule_projet_arabe"
    t.string "intitule_projet_francais"
    t.string "secteur_activite"
    t.string "filieres_industrielles"
    t.float "superficie_demandee"
    t.float "montant_investissement"
    t.integer "nmbr_emplois"
    t.date "date_examen_demande"
    t.integer "num_decision"
    t.integer "num_lot"
    t.float "superficie_octroyee"
    t.string "localisation_projet"
    t.string "commune"
    t.string "site"
    t.float "p_droits_etude_vrd"
    t.integer "num_arrete_concession"
    t.date "date_arrete_concession"
    t.float "montant_concession"
    t.date "date_paiment"
    t.integer "num_acte_concession"
    t.date "date_acte_concession"
    t.integer "num_acte_cession"
    t.date "date_acte_cession"
    t.integer "num_depot_dossier_permis_construire"
    t.date "date_depot_dossier_permis_construire"
    t.string "avis_services"
    t.integer "num_arrete_permis_construire"
    t.date "date_arrete_permis_construire"
    t.date "date_depot_dossier"
    t.date "date_approbation_eie"
    t.date "date_decision_creation_prealabre"
    t.integer "num_arrete_exploitation"
    t.date "date_arrete_exploitation"
    t.integer "num_depot_dossier"
    t.integer "num_decision_andi"
    t.integer "taux_avancement_traveux"
    t.integer "taux_avancement_investissement"
    t.string "mise_en_service"
    t.string "emplois_reel"
    t.string "changement_status"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "les_parceles_", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "n°_lot", limit: 50
    t.string "type_lot", limit: 50
    t.string "situation_", limit: 50
    t.string "situation1", limit: 50
    t.date "date_d_act"
    t.date "date_de_r"
    t.integer "n°d_act", limit: 2
    t.date "date_d_att"
    t.integer "prix_de_ve", limit: 2
    t.string "activite_i", limit: 100
    t.string "investisse", limit: 50
    t.string "observatio", limit: 50
    t.string "zone_", limit: 50
    t.float "surfacelot"
    t.integer "n°_permis", limit: 2
    t.date "date_permi"
    t.string "secteur__a", limit: 50
    t.geometry "geom", limit: {:srid=>0, :type=>"multi_polygon"}
    t.index ["geom"], name: "les_parceles__geom_idx", using: :gist
  end

  create_table "lots", force: :cascade do |t|
    t.integer "num_lot"
    t.string "activite"
    t.string "investisseur"
    t.string "type_lot"
    t.string "situation_physique"
    t.string "situation_juridique"
    t.date "date_act"
    t.integer "num_act"
    t.date "date_attribution"
    t.date "date_resolution"
    t.integer "etat_avancement"
    t.string "nom_zone"
    t.string "class_activite"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.bigint "photo_file_size"
    t.datetime "photo_updated_at"
    t.string "document_file_name"
    t.string "document_content_type"
    t.bigint "document_file_size"
    t.datetime "document_updated_at"
    t.string "type_zone"
  end

  create_table "promotion_immobilieres", force: :cascade do |t|
    t.string "code_zone"
    t.string "type_zone"
    t.string "nom_zone"
    t.string "commune"
    t.string "wilaya"
    t.integer "num_arrete_creation"
    t.date "dat_arrete_creation"
    t.float "superf_total"
    t.float "superf_cessible"
    t.float "superf_vrd"
    t.integer "nbr_lots"
    t.integer "nbr_lot_attribues"
    t.integer "nbr_lot_cession"
    t.integer "nbr_lot_concession"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
    t.index ["geom"], name: "index_regions_on_geom", using: :gist
  end

  create_table "states", force: :cascade do |t|
    t.bigint "country_id"
    t.string "name"
    t.string "hasc_code"
    t.string "state_type"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["country_id"], name: "index_states_on_country_id"
    t.index ["geom"], name: "index_states_on_geom", using: :gist
    t.index ["region_id"], name: "index_states_on_region_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.bigint "photo_file_size"
    t.datetime "photo_updated_at"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zone_activites", force: :cascade do |t|
    t.string "code_zone"
    t.string "type_zone"
    t.string "nom_zone"
    t.string "commune"
    t.string "wilaya"
    t.integer "num_arrete_creation"
    t.date "dat_arrete_creation"
    t.float "superf_total"
    t.float "superf_cessible"
    t.float "superf_vrd"
    t.integer "nbr_lots"
    t.integer "nbr_lot_attribues"
    t.integer "nbr_lot_cession"
    t.integer "nbr_lot_concession"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zone_industrielles", force: :cascade do |t|
    t.string "code_zone"
    t.string "type_zone"
    t.string "nom_zone"
    t.string "commune"
    t.string "wilaya"
    t.integer "num_arrete_creation"
    t.date "dat_arrete_creation"
    t.float "superf_total"
    t.float "superf_cessible"
    t.float "superf_vrd"
    t.integer "nbr_lots"
    t.integer "nbr_lot_attribues"
    t.integer "nbr_lot_cession"
    t.integer "nbr_lot_concession"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", force: :cascade do |t|
    t.string "code_zone"
    t.string "type_zone"
    t.string "nom_zone"
    t.string "commune"
    t.string "wilaya"
    t.integer "num_arrete_creation"
    t.date "dat_arrete_creation"
    t.float "superf_total"
    t.float "superf_cessible"
    t.float "superf_vrd"
    t.integer "nbr_lots"
    t.integer "nbr_lot_attribues"
    t.integer "nbr_lot_cession"
    t.integer "nbr_lot_concession"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "regions", "countries"
  add_foreign_key "states", "countries"
  add_foreign_key "states", "regions"
end
