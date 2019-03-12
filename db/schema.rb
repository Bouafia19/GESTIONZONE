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

ActiveRecord::Schema.define(version: 2019_03_12_170701) do

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

  create_table "badges_sashes", force: :cascade do |t|
    t.integer "badge_id"
    t.integer "sash_id"
    t.boolean "notified_user", default: false
    t.datetime "created_at"
    t.index ["badge_id", "sash_id"], name: "index_badges_sashes_on_badge_id_and_sash_id"
    t.index ["badge_id"], name: "index_badges_sashes_on_badge_id"
    t.index ["sash_id"], name: "index_badges_sashes_on_sash_id"
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

  create_table "sashes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
