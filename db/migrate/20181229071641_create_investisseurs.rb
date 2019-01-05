class CreateInvestisseurs < ActiveRecord::Migration[5.2]
  def change
    create_table :investisseurs do |t|
      t.integer :num_dossier
      t.date :date_depot_demande
      t.string :raison_sociale_arabe
      t.string :nom_prenom_gerant_arabe
      t.string :raison_sociale_francais
      t.string :nom_prenom_gerant_francais
      t.string :adresse
      t.integer :num_telephone
      t.integer :fax
      t.string :email
      t.string :intitule_projet_arabe
      t.string :intitule_projet_francais
      t.string :secteur_activite
      t.string :filieres_industrielles
      t.float :superficie_demandee
      t.float :montant_investissement
      t.integer :nmbr_emplois
      t.date :date_examen_demande
      t.integer :num_decision
      t.integer :num_lot
      t.float :superficie_octroyee
      t.string :localisation_projet
      t.string :commune
      t.string :site
      t.float :p_droits_etude_vrd
      t.integer :num_arrete_concession
      t.date :date_arrete_concession
      t.float :montant_concession
      t.date :date_paiment
      t.integer :num_acte_concession
      t.date :date_acte_concession
      t.integer :num_acte_cession
      t.date :date_acte_cession
      t.integer :num_depot_dossier_permis_construire
      t.date :date_depot_dossier_permis_construire
      t.string :avis_services
      t.integer :num_arrete_permis_construire
      t.date :date_arrete_permis_construire
      t.date :date_depot_dossier
      t.date :date_approbation_eie
      t.date :date_decision_creation_prealabre
      t.integer :num_arrete_exploitation
      t.date :date_arrete_exploitation
      t.integer :num_depot_dossier
      t.date :date_depot_dossier
      t.integer :num_decision_andi
      t.integer :taux_avancement_traveux
      t.integer :taux_avancement_investissement
      t.string :mise_en_service
      t.string :emplois_reel
      t.string :changement_status
      t.text :observation

      t.timestamps
    end
  end
end
