require "application_system_test_case"

class InvestisseursTest < ApplicationSystemTestCase
  setup do
    @investisseur = investisseurs(:one)
  end

  test "visiting the index" do
    visit investisseurs_url
    assert_selector "h1", text: "Investisseurs"
  end

  test "creating a Investisseur" do
    visit investisseurs_url
    click_on "New Investisseur"

    fill_in "Adresse", with: @investisseur.adresse
    fill_in "Avis Services", with: @investisseur.avis_services
    fill_in "Changement Status", with: @investisseur.changement_status
    fill_in "Commune", with: @investisseur.commune
    fill_in "Date Acte Cession", with: @investisseur.date_acte_cession
    fill_in "Date Acte Concession", with: @investisseur.date_acte_concession
    fill_in "Date Approbation Eie", with: @investisseur.date_approbation_eie
    fill_in "Date Arrete Concession", with: @investisseur.date_arrete_concession
    fill_in "Date Arrete Exploitation", with: @investisseur.date_arrete_exploitation
    fill_in "Date Arrete Permis Construire", with: @investisseur.date_arrete_permis_construire
    fill_in "Date Decision Creation Prealabre", with: @investisseur.date_decision_creation_prealabre
    fill_in "Date Depot Demande", with: @investisseur.date_depot_demande
    fill_in "Date Depot Dossier", with: @investisseur.date_depot_dossier
    fill_in "Date Depot Dossier Permis Construire", with: @investisseur.date_depot_dossier_permis_construire
    fill_in "Date Examen Demande", with: @investisseur.date_examen_demande
    fill_in "Date Paiment", with: @investisseur.date_paiment
    fill_in "Email", with: @investisseur.email
    fill_in "Emplois Reel", with: @investisseur.emplois_reel
    fill_in "Fax", with: @investisseur.fax
    fill_in "Filieres Industrielles", with: @investisseur.filieres_industrielles
    fill_in "Intitule Projet Arabe", with: @investisseur.intitule_projet_arabe
    fill_in "Intitule Projet Francais", with: @investisseur.intitule_projet_francais
    fill_in "Localisation Projet", with: @investisseur.localisation_projet
    fill_in "Mise En Service", with: @investisseur.mise_en_service
    fill_in "Montant Concession", with: @investisseur.montant_concession
    fill_in "Montant Investissement", with: @investisseur.montant_investissement
    fill_in "Nmbr Emplois", with: @investisseur.nmbr_emplois
    fill_in "Nom Prenom Gerant Arabe", with: @investisseur.nom_prenom_gerant_arabe
    fill_in "Nom Prenom Gerant Francais", with: @investisseur.nom_prenom_gerant_francais
    fill_in "Num Acte Cession", with: @investisseur.num_acte_cession
    fill_in "Num Acte Concession", with: @investisseur.num_acte_concession
    fill_in "Num Arrete Concession", with: @investisseur.num_arrete_concession
    fill_in "Num Arrete Exploitation", with: @investisseur.num_arrete_exploitation
    fill_in "Num Arrete Permis Construire", with: @investisseur.num_arrete_permis_construire
    fill_in "Num Decision", with: @investisseur.num_decision
    fill_in "Num Decision Andi", with: @investisseur.num_decision_andi
    fill_in "Num Depot Dossier", with: @investisseur.num_depot_dossier
    fill_in "Num Depot Dossier Permis Construire", with: @investisseur.num_depot_dossier_permis_construire
    fill_in "Num Dossier", with: @investisseur.num_dossier
    fill_in "Num Lot", with: @investisseur.num_lot
    fill_in "Num Telephone", with: @investisseur.num_telephone
    fill_in "Observation", with: @investisseur.observation
    fill_in "P Droits Etude Vrd", with: @investisseur.p_droits_etude_vrd
    fill_in "Raison Sociale Arabe", with: @investisseur.raison_sociale_arabe
    fill_in "Raison Sociale Francais", with: @investisseur.raison_sociale_francais
    fill_in "Secteur Activite", with: @investisseur.secteur_activite
    fill_in "Site", with: @investisseur.site
    fill_in "Superficie Demandee", with: @investisseur.superficie_demandee
    fill_in "Superficie Octroyee", with: @investisseur.superficie_octroyee
    fill_in "Taux Avancement Investissement", with: @investisseur.taux_avancement_investissement
    fill_in "Taux Avancement Traveux", with: @investisseur.taux_avancement_traveux
    click_on "Create Investisseur"

    assert_text "Investisseur was successfully created"
    click_on "Back"
  end

  test "updating a Investisseur" do
    visit investisseurs_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @investisseur.adresse
    fill_in "Avis Services", with: @investisseur.avis_services
    fill_in "Changement Status", with: @investisseur.changement_status
    fill_in "Commune", with: @investisseur.commune
    fill_in "Date Acte Cession", with: @investisseur.date_acte_cession
    fill_in "Date Acte Concession", with: @investisseur.date_acte_concession
    fill_in "Date Approbation Eie", with: @investisseur.date_approbation_eie
    fill_in "Date Arrete Concession", with: @investisseur.date_arrete_concession
    fill_in "Date Arrete Exploitation", with: @investisseur.date_arrete_exploitation
    fill_in "Date Arrete Permis Construire", with: @investisseur.date_arrete_permis_construire
    fill_in "Date Decision Creation Prealabre", with: @investisseur.date_decision_creation_prealabre
    fill_in "Date Depot Demande", with: @investisseur.date_depot_demande
    fill_in "Date Depot Dossier", with: @investisseur.date_depot_dossier
    fill_in "Date Depot Dossier Permis Construire", with: @investisseur.date_depot_dossier_permis_construire
    fill_in "Date Examen Demande", with: @investisseur.date_examen_demande
    fill_in "Date Paiment", with: @investisseur.date_paiment
    fill_in "Email", with: @investisseur.email
    fill_in "Emplois Reel", with: @investisseur.emplois_reel
    fill_in "Fax", with: @investisseur.fax
    fill_in "Filieres Industrielles", with: @investisseur.filieres_industrielles
    fill_in "Intitule Projet Arabe", with: @investisseur.intitule_projet_arabe
    fill_in "Intitule Projet Francais", with: @investisseur.intitule_projet_francais
    fill_in "Localisation Projet", with: @investisseur.localisation_projet
    fill_in "Mise En Service", with: @investisseur.mise_en_service
    fill_in "Montant Concession", with: @investisseur.montant_concession
    fill_in "Montant Investissement", with: @investisseur.montant_investissement
    fill_in "Nmbr Emplois", with: @investisseur.nmbr_emplois
    fill_in "Nom Prenom Gerant Arabe", with: @investisseur.nom_prenom_gerant_arabe
    fill_in "Nom Prenom Gerant Francais", with: @investisseur.nom_prenom_gerant_francais
    fill_in "Num Acte Cession", with: @investisseur.num_acte_cession
    fill_in "Num Acte Concession", with: @investisseur.num_acte_concession
    fill_in "Num Arrete Concession", with: @investisseur.num_arrete_concession
    fill_in "Num Arrete Exploitation", with: @investisseur.num_arrete_exploitation
    fill_in "Num Arrete Permis Construire", with: @investisseur.num_arrete_permis_construire
    fill_in "Num Decision", with: @investisseur.num_decision
    fill_in "Num Decision Andi", with: @investisseur.num_decision_andi
    fill_in "Num Depot Dossier", with: @investisseur.num_depot_dossier
    fill_in "Num Depot Dossier Permis Construire", with: @investisseur.num_depot_dossier_permis_construire
    fill_in "Num Dossier", with: @investisseur.num_dossier
    fill_in "Num Lot", with: @investisseur.num_lot
    fill_in "Num Telephone", with: @investisseur.num_telephone
    fill_in "Observation", with: @investisseur.observation
    fill_in "P Droits Etude Vrd", with: @investisseur.p_droits_etude_vrd
    fill_in "Raison Sociale Arabe", with: @investisseur.raison_sociale_arabe
    fill_in "Raison Sociale Francais", with: @investisseur.raison_sociale_francais
    fill_in "Secteur Activite", with: @investisseur.secteur_activite
    fill_in "Site", with: @investisseur.site
    fill_in "Superficie Demandee", with: @investisseur.superficie_demandee
    fill_in "Superficie Octroyee", with: @investisseur.superficie_octroyee
    fill_in "Taux Avancement Investissement", with: @investisseur.taux_avancement_investissement
    fill_in "Taux Avancement Traveux", with: @investisseur.taux_avancement_traveux
    click_on "Update Investisseur"

    assert_text "Investisseur was successfully updated"
    click_on "Back"
  end

  test "destroying a Investisseur" do
    visit investisseurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investisseur was successfully destroyed"
  end
end
