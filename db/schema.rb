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

ActiveRecord::Schema.define(version: 2019_05_09_074054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "postgis_topology"

  create_table "88_el_eulma", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.string "n°_de_lot", limit: 50
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.string "numéro_de", limit: 254
    t.string "date_de_d", limit: 254
    t.string "raison_soc", limit: 254
    t.string "nom_et__pr", limit: 254
    t.string "raison_s_1", limit: 254
    t.string "nom_et___1", limit: 254
    t.string "adresse_", limit: 254
    t.string "numéro_d_", limit: 254
    t.string "____fax", limit: 254
    t.string "email", limit: 254
    t.string "intitulé_", limit: 254
    t.string "intitulé___15", limit: 254
    t.string "secteur_d_", limit: 254
    t.string "filières_", limit: 254
    t.string "superficie", limit: 254
    t.string "montant_de", limit: 254
    t.string "nombre_d", limit: 254
    t.string "date_d’e", limit: 254
    t.string "numéro_d___22", limit: 254
    t.string "n°_de_lo_", limit: 254
    t.string "n°_de_lo___24", limit: 254
    t.float "superfic_1"
    t.string "localisati", limit: 254
    t.string "commune", limit: 254
    t.string "site____zi", limit: 254
    t.string "p_droits_e", limit: 254
    t.string "n°arrét", limit: 254
    t.string "date_arré", limit: 254
    t.string "montant__1", limit: 254
    t.string "date_de_pa", limit: 254
    t.string "n°_d_acte", limit: 254
    t.string "date_d_act", limit: 254
    t.string "n°_d_act_", limit: 254
    t.string "date_d_a_1", limit: 254
    t.string "___n°_de_d", limit: 254
    t.string "___date_dép", limit: 254
    t.string "avis_des_s", limit: 254
    t.string "n°_de_l_a", limit: 254
    t.string "date_de_l_", limit: 254
    t.string "date_dép", limit: 254
    t.string "date_appro", limit: 254
    t.string "date_déci", limit: 254
    t.string "n°_arrêt", limit: 254
    t.string "date_arrê", limit: 254
    t.string "n°_depot_", limit: 254
    t.string "date_depot", limit: 254
    t.string "n°_décis", limit: 254
    t.string "taux_d_ava", limit: 254
    t.string "taux_d_a_1", limit: 254
    t.string "mise_en_se", limit: 254
    t.string "emplois_r", limit: 254
    t.string "changement", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "88_el_eulma_geom_idx", using: :gist
  end

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

  create_table "anciennes", force: :cascade do |t|
    t.string "n_de_lot"
    t.string "n_dossier"
    t.string "r_socia_ar"
    t.string "r_socia_fr"
    t.geometry "geom", limit: {:srid=>3857, :type=>"multi_polygon"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geom"], name: "index_anciennes_on_geom", using: :gist
  end

  create_table "badges_sashes", force: :cascade do |t|
    t.integer "badge_id"
    t.integer "sash_id"
    t.boolean "notified_user", default: false
    t.datetime "created_at"
    t.index ["badge_id", "sash_id"], name: "index_badges_sashes_on_badge_id_and_sash_id"
    t.index ["badge_id"], name: "index_badges_sashes_on_badge_id"
    t.index ["sash_id"], name: "index_badges_sashes_on_sash_id"
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

  create_table "extensions", force: :cascade do |t|
    t.string "n_de_lot"
    t.string "n_dossier"
    t.string "r_socia_ar"
    t.string "r_socia_fr"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geom"], name: "index_extensions_on_geom", using: :gist
  end

  create_table "extensions_ref", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.integer "n°_de_lot", limit: 2
    t.string "n_dossier", limit: 254
    t.string "d_dep_dema", limit: 254
    t.string "r_socia_ar", limit: 254
    t.string "n_p_gerant", limit: 254
    t.string "r_socia_fr", limit: 254
    t.string "n_p_gera_1", limit: 254
    t.string "adresse", limit: 254
    t.string "n_tele", limit: 254
    t.string "fax", limit: 254
    t.string "email", limit: 254
    t.string "int_projet", limit: 254
    t.string "int_proj_1", limit: 254
    t.string "sect_activ", limit: 254
    t.string "fil_indust", limit: 254
    t.float "su_demand_"
    t.string "mont_inves", limit: 254
    t.float "nomb_emplo"
    t.date "d_examen_d"
    t.float "n_decision"
    t.float "su_octroye"
    t.string "locali_pro", limit: 254
    t.string "commune", limit: 254
    t.string "site", limit: 254
    t.string "p_droi_etu", limit: 254
    t.string "n_arr_conc", limit: 254
    t.date "d_arret_co"
    t.string "mont_conce", limit: 254
    t.date "dat_paiem"
    t.string "n_act_conc", limit: 254
    t.date "da_acte_co"
    t.string "n_act_cess", limit: 254
    t.date "dat_acte_c"
    t.float "n_depot_pe"
    t.date "d_depot_do"
    t.string "avis_servi", limit: 254
    t.string "n_arrt_per", limit: 254
    t.string "da_arrt_pe", limit: 254
    t.date "dat_depot_"
    t.date "dat_approb"
    t.date "dat_deci_c"
    t.string "n_arrt_exp", limit: 254
    t.date "dat_arrt_e"
    t.string "n_depot_do", limit: 254
    t.date "date_depot"
    t.string "n_deci_and", limit: 254
    t.float "taux_avanc"
    t.float "taux_ava_1"
    t.string "mise_en_se", limit: 254
    t.float "emplois_re"
    t.string "changem_st", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>3857, :type=>"multi_polygon"}
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
    t.string "num_dossier"
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
    t.string "num_decision"
    t.string "num_lot"
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
    t.integer "sash_id"
    t.integer "level", default: 0
    t.string "document_file_name"
    t.string "document_content_type"
    t.bigint "document_file_size"
    t.datetime "document_updated_at"
    t.integer "idjson"
  end

  create_table "lors", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.string "n°_de_lot", limit: 50
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.string "n_de_lot", limit: 254
    t.string "n_dossier", limit: 254
    t.string "d_dep_dema", limit: 254
    t.string "r_socia_ar", limit: 254
    t.string "n_p_gerant", limit: 254
    t.string "r_socia_fr", limit: 254
    t.string "n_p_gera_1", limit: 254
    t.string "adresse", limit: 254
    t.string "n_tele", limit: 254
    t.string "fax", limit: 254
    t.string "email", limit: 254
    t.string "int_projet", limit: 254
    t.string "int_proj_1", limit: 254
    t.string "sect_activ", limit: 254
    t.string "fil_indust", limit: 254
    t.string "su_demand_", limit: 254
    t.string "mont_inves", limit: 254
    t.string "nomb_emplo", limit: 254
    t.string "d_examen_d", limit: 254
    t.string "n_decision", limit: 254
    t.string "n_de_lot1", limit: 254
    t.float "su_octroye"
    t.string "locali_pro", limit: 254
    t.string "commune", limit: 254
    t.string "site", limit: 254
    t.string "p_droi_etu", limit: 254
    t.string "n_arr_conc", limit: 254
    t.date "d_arret_co"
    t.string "mont_conce", limit: 254
    t.date "dat_paiem"
    t.string "n_act_conc", limit: 254
    t.date "da_acte_co"
    t.string "n_act_cess", limit: 254
    t.string "dat_acte_c", limit: 254
    t.string "n_depot_pe", limit: 254
    t.date "d_depot_do"
    t.string "avis_servi", limit: 254
    t.string "n_arrt_per", limit: 254
    t.date "da_arrt_pe"
    t.date "dat_depot_"
    t.date "dat_approb"
    t.date "dat_deci_c"
    t.string "n_arrt_exp", limit: 254
    t.date "dat_arrt_e"
    t.string "n_depot_do", limit: 254
    t.string "date_depot", limit: 254
    t.string "n_deci_and", limit: 254
    t.string "taux_avanc", limit: 254
    t.string "taux_ava_1", limit: 254
    t.string "mise_en_se", limit: 254
    t.float "emplois_re"
    t.string "changem_st", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "lors_geom_idx", using: :gist
  end

  create_table "lots", force: :cascade do |t|
    t.string "num_lot"
    t.string "activite"
    t.string "investisseur"
    t.string "type_lot"
    t.string "situation_physique"
    t.string "situation_juridique"
    t.date "date_act"
    t.string "num_act"
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
    t.float "superficie"
  end

  create_table "mailboxer_conversation_opt_outs", id: :serial, force: :cascade do |t|
    t.string "unsubscriber_type"
    t.integer "unsubscriber_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id"
    t.index ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type"
  end

  create_table "mailboxer_conversations", id: :serial, force: :cascade do |t|
    t.string "subject", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_notifications", id: :serial, force: :cascade do |t|
    t.string "type"
    t.text "body"
    t.string "subject", default: ""
    t.string "sender_type"
    t.integer "sender_id"
    t.integer "conversation_id"
    t.boolean "draft", default: false
    t.string "notification_code"
    t.string "notified_object_type"
    t.integer "notified_object_id"
    t.string "attachment"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
    t.boolean "global", default: false
    t.datetime "expires"
    t.index ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id"
    t.index ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type"
    t.index ["notified_object_type", "notified_object_id"], name: "mailboxer_notifications_notified_object"
    t.index ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type"
    t.index ["type"], name: "index_mailboxer_notifications_on_type"
  end

  create_table "mailboxer_receipts", id: :serial, force: :cascade do |t|
    t.string "receiver_type"
    t.integer "receiver_id"
    t.integer "notification_id", null: false
    t.boolean "is_read", default: false
    t.boolean "trashed", default: false
    t.boolean "deleted", default: false
    t.string "mailbox_type", limit: 25
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_delivered", default: false
    t.string "delivery_method"
    t.string "message_id"
    t.index ["notification_id"], name: "index_mailboxer_receipts_on_notification_id"
    t.index ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type"
  end

  create_table "merit_actions", force: :cascade do |t|
    t.integer "user_id"
    t.string "action_method"
    t.integer "action_value"
    t.boolean "had_errors", default: false
    t.string "target_model"
    t.integer "target_id"
    t.text "target_data"
    t.boolean "processed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merit_activity_logs", force: :cascade do |t|
    t.integer "action_id"
    t.string "related_change_type"
    t.integer "related_change_id"
    t.string "description"
    t.datetime "created_at"
  end

  create_table "merit_score_points", force: :cascade do |t|
    t.bigint "score_id"
    t.integer "num_points", default: 0
    t.string "log"
    t.datetime "created_at"
    t.index ["score_id"], name: "index_merit_score_points_on_score_id"
  end

  create_table "merit_scores", force: :cascade do |t|
    t.bigint "sash_id"
    t.string "category", default: "default"
    t.index ["sash_id"], name: "index_merit_scores_on_sash_id"
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

  create_table "sabers", force: :cascade do |t|
    t.string "n_dossier"
    t.string "r_socia_fr"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geom"], name: "index_sabers_on_geom", using: :gist
  end

  create_table "sashes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "zi_el_eulma", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.string "n°_de_lot", limit: 50
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.string "n_de_lot", limit: 254
    t.string "n_dossier", limit: 254
    t.string "d_dep_dema", limit: 254
    t.string "r_socia_ar", limit: 254
    t.string "n_p_gerant", limit: 254
    t.string "r_socia_fr", limit: 254
    t.string "n_p_gera_1", limit: 254
    t.string "adresse", limit: 254
    t.string "n_tele", limit: 254
    t.string "fax", limit: 254
    t.string "email", limit: 254
    t.string "int_projet", limit: 254
    t.string "int_proj_1", limit: 254
    t.string "sect_activ", limit: 254
    t.string "fil_indust", limit: 254
    t.string "su_demand_", limit: 254
    t.string "mont_inves", limit: 254
    t.string "nomb_emplo", limit: 254
    t.string "d_examen_d", limit: 254
    t.string "n_decision", limit: 254
    t.string "n_de_lot1", limit: 254
    t.float "su_octroye"
    t.string "locali_pro", limit: 254
    t.string "commune", limit: 254
    t.string "site", limit: 254
    t.string "p_droi_etu", limit: 254
    t.string "n_arr_conc", limit: 254
    t.date "d_arret_co"
    t.string "mont_conce", limit: 254
    t.date "dat_paiem"
    t.string "n_act_conc", limit: 254
    t.date "da_acte_co"
    t.string "n_act_cess", limit: 254
    t.string "dat_acte_c", limit: 254
    t.string "n_depot_pe", limit: 254
    t.date "d_depot_do"
    t.string "avis_servi", limit: 254
    t.string "n_arrt_per", limit: 254
    t.date "da_arrt_pe"
    t.date "dat_depot_"
    t.date "dat_approb"
    t.date "dat_deci_c"
    t.string "n_arrt_exp", limit: 254
    t.date "dat_arrt_e"
    t.string "n_depot_do", limit: 254
    t.string "date_depot", limit: 254
    t.string "n_deci_and", limit: 254
    t.string "taux_avanc", limit: 254
    t.string "taux_ava_1", limit: 254
    t.string "mise_en_se", limit: 254
    t.float "emplois_re"
    t.string "changem_st", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "zi_el_eulma_geom_idx", using: :gist
  end

  create_table "zi_ouled_saber", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.string "n°_de_lot", limit: 50
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.integer "n_de_lot", limit: 2
    t.string "n_dossier", limit: 254
    t.date "d_dep_dema"
    t.string "r_socia_ar", limit: 254
    t.string "n_p_gerant", limit: 254
    t.string "r_socia_fr", limit: 254
    t.string "n_p_gera_1", limit: 254
    t.string "adresse", limit: 254
    t.string "n_tele", limit: 254
    t.float "fax"
    t.string "email", limit: 254
    t.string "int_projet", limit: 254
    t.string "int_proj_1", limit: 254
    t.string "sect_activ", limit: 254
    t.string "fil_indust", limit: 254
    t.float "su_demand_"
    t.float "mont_inves"
    t.float "nomb_emplo"
    t.string "d_examen_d", limit: 254
    t.string "n_decision", limit: 254
    t.float "n_de_lot_1"
    t.float "su_octroye"
    t.string "locali_pro", limit: 254
    t.string "commune", limit: 254
    t.string "site", limit: 254
    t.string "p_droi_etu", limit: 254
    t.string "n_arr_conc", limit: 254
    t.date "d_arret_co"
    t.string "mont_conce", limit: 254
    t.date "dat_paiem"
    t.string "n_act_conc", limit: 254
    t.date "da_acte_co"
    t.string "n_act_cess", limit: 254
    t.date "dat_acte_c"
    t.string "n_depot_pe", limit: 254
    t.date "d_depot_do"
    t.string "avis_servi", limit: 254
    t.string "n_arrt_per", limit: 254
    t.date "da_arrt_pe"
    t.date "dat_depot_"
    t.date "dat_approb"
    t.date "dat_deci_c"
    t.string "n_arrt_exp", limit: 254
    t.date "dat_arrt_e"
    t.string "n_depot_do", limit: 254
    t.date "date_depot"
    t.string "n_deci_and", limit: 254
    t.float "taux_avanc"
    t.float "taux_ava_1"
    t.string "mise_en_se", limit: 254
    t.float "emplois_re"
    t.string "changem_st", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "zi_ouled_saber_geom_idx", using: :gist
  end

  create_table "zi_setif_ancienne", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.string "n°_de_lot", limit: 50
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.string "n_dossier", limit: 254
    t.string "d_dep_dema", limit: 254
    t.string "r_socia_ar", limit: 254
    t.string "n_p_gerant", limit: 254
    t.string "r_socia_fr", limit: 254
    t.string "n_p_gera_1", limit: 254
    t.string "adresse", limit: 254
    t.string "n_tele", limit: 254
    t.string "fax", limit: 254
    t.string "email", limit: 254
    t.string "int_projet", limit: 254
    t.string "int_proj_1", limit: 254
    t.string "sect_activ", limit: 254
    t.string "fil_indust", limit: 254
    t.string "su_demand_", limit: 254
    t.string "mont_inves", limit: 254
    t.string "nomb_emplo", limit: 254
    t.string "d_examen_d", limit: 254
    t.date "n_decision"
    t.string "n_de_lot", limit: 254
    t.float "su_octroye"
    t.string "locali_pro", limit: 254
    t.string "commune", limit: 254
    t.string "site", limit: 254
    t.string "p_droi_etu", limit: 254
    t.string "n_arr_conc", limit: 254
    t.date "d_arret_co"
    t.string "mont_conce", limit: 254
    t.date "dat_paiem"
    t.string "n_act_conc", limit: 254
    t.date "da_acte_co"
    t.string "n_act_cess", limit: 254
    t.string "dat_acte_c", limit: 254
    t.string "n_depot_pe", limit: 254
    t.date "d_depot_do"
    t.string "avis_servi", limit: 254
    t.string "n_arrt_per", limit: 254
    t.date "da_arrt_pe"
    t.date "dat_depot_"
    t.date "dat_approb"
    t.date "dat_deci_c"
    t.string "n_arrt_exp", limit: 254
    t.date "dat_arrt_e"
    t.string "n_depot_do", limit: 254
    t.date "date_depot"
    t.string "n_deci_and", limit: 254
    t.float "taux_avanc"
    t.float "taux_ava_1"
    t.string "mise_en_se", limit: 254
    t.float "emplois_re"
    t.string "changem_st", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "zi_setif_ancienne_geom_idx", using: :gist
  end

  create_table "zi_setif_extension", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "objectid"
    t.decimal "shape_leng"
    t.decimal "shape_area"
    t.integer "n°_de_lot", limit: 2
    t.string "n_dossier", limit: 254
    t.string "d_dep_dema", limit: 254
    t.string "r_socia_ar", limit: 254
    t.string "n_p_gerant", limit: 254
    t.string "r_socia_fr", limit: 254
    t.string "n_p_gera_1", limit: 254
    t.string "adresse", limit: 254
    t.string "n_tele", limit: 254
    t.string "fax", limit: 254
    t.string "email", limit: 254
    t.string "int_projet", limit: 254
    t.string "int_proj_1", limit: 254
    t.string "sect_activ", limit: 254
    t.string "fil_indust", limit: 254
    t.float "su_demand_"
    t.string "mont_inves", limit: 254
    t.float "nomb_emplo"
    t.date "d_examen_d"
    t.float "n_decision"
    t.float "su_octroye"
    t.string "locali_pro", limit: 254
    t.string "commune", limit: 254
    t.string "site", limit: 254
    t.string "p_droi_etu", limit: 254
    t.string "n_arr_conc", limit: 254
    t.date "d_arret_co"
    t.string "mont_conce", limit: 254
    t.date "dat_paiem"
    t.string "n_act_conc", limit: 254
    t.date "da_acte_co"
    t.string "n_act_cess", limit: 254
    t.date "dat_acte_c"
    t.float "n_depot_pe"
    t.date "d_depot_do"
    t.string "avis_servi", limit: 254
    t.string "n_arrt_per", limit: 254
    t.string "da_arrt_pe", limit: 254
    t.date "dat_depot_"
    t.date "dat_approb"
    t.date "dat_deci_c"
    t.string "n_arrt_exp", limit: 254
    t.date "dat_arrt_e"
    t.string "n_depot_do", limit: 254
    t.date "date_depot"
    t.string "n_deci_and", limit: 254
    t.float "taux_avanc"
    t.float "taux_ava_1"
    t.string "mise_en_se", limit: 254
    t.float "emplois_re"
    t.string "changem_st", limit: 254
    t.string "observatio", limit: 254
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "zi_setif_extension_geom_idx", using: :gist
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

  create_table "zone_entrepot_activites", force: :cascade do |t|
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

  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "regions", "countries"
  add_foreign_key "states", "countries"
  add_foreign_key "states", "regions"
end
