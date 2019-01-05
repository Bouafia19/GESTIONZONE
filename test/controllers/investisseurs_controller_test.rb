require 'test_helper'

class InvestisseursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investisseur = investisseurs(:one)
  end

  test "should get index" do
    get investisseurs_url
    assert_response :success
  end

  test "should get new" do
    get new_investisseur_url
    assert_response :success
  end

  test "should create investisseur" do
    assert_difference('Investisseur.count') do
      post investisseurs_url, params: { investisseur: { adresse: @investisseur.adresse, avis_services: @investisseur.avis_services, changement_status: @investisseur.changement_status, commune: @investisseur.commune, date_acte_cession: @investisseur.date_acte_cession, date_acte_concession: @investisseur.date_acte_concession, date_approbation_eie: @investisseur.date_approbation_eie, date_arrete_concession: @investisseur.date_arrete_concession, date_arrete_exploitation: @investisseur.date_arrete_exploitation, date_arrete_permis_construire: @investisseur.date_arrete_permis_construire, date_decision_creation_prealabre: @investisseur.date_decision_creation_prealabre, date_depot_demande: @investisseur.date_depot_demande, date_depot_dossier: @investisseur.date_depot_dossier, date_depot_dossier_permis_construire: @investisseur.date_depot_dossier_permis_construire, date_examen_demande: @investisseur.date_examen_demande, date_paiment: @investisseur.date_paiment, email: @investisseur.email, emplois_reel: @investisseur.emplois_reel, fax: @investisseur.fax, filieres_industrielles: @investisseur.filieres_industrielles, intitule_projet_arabe: @investisseur.intitule_projet_arabe, intitule_projet_francais: @investisseur.intitule_projet_francais, localisation_projet: @investisseur.localisation_projet, mise_en_service: @investisseur.mise_en_service, montant_concession: @investisseur.montant_concession, montant_investissement: @investisseur.montant_investissement, nmbr_emplois: @investisseur.nmbr_emplois, nom_prenom_gerant_arabe: @investisseur.nom_prenom_gerant_arabe, nom_prenom_gerant_francais: @investisseur.nom_prenom_gerant_francais, num_acte_cession: @investisseur.num_acte_cession, num_acte_concession: @investisseur.num_acte_concession, num_arrete_concession: @investisseur.num_arrete_concession, num_arrete_exploitation: @investisseur.num_arrete_exploitation, num_arrete_permis_construire: @investisseur.num_arrete_permis_construire, num_decision: @investisseur.num_decision, num_decision_andi: @investisseur.num_decision_andi, num_depot_dossier: @investisseur.num_depot_dossier, num_depot_dossier_permis_construire: @investisseur.num_depot_dossier_permis_construire, num_dossier: @investisseur.num_dossier, num_lot: @investisseur.num_lot, num_telephone: @investisseur.num_telephone, observation: @investisseur.observation, p_droits_etude_vrd: @investisseur.p_droits_etude_vrd, raison_sociale_arabe: @investisseur.raison_sociale_arabe, raison_sociale_francais: @investisseur.raison_sociale_francais, secteur_activite: @investisseur.secteur_activite, site: @investisseur.site, superficie_demandee: @investisseur.superficie_demandee, superficie_octroyee: @investisseur.superficie_octroyee, taux_avancement_investissement: @investisseur.taux_avancement_investissement, taux_avancement_traveux: @investisseur.taux_avancement_traveux } }
    end

    assert_redirected_to investisseur_url(Investisseur.last)
  end

  test "should show investisseur" do
    get investisseur_url(@investisseur)
    assert_response :success
  end

  test "should get edit" do
    get edit_investisseur_url(@investisseur)
    assert_response :success
  end

  test "should update investisseur" do
    patch investisseur_url(@investisseur), params: { investisseur: { adresse: @investisseur.adresse, avis_services: @investisseur.avis_services, changement_status: @investisseur.changement_status, commune: @investisseur.commune, date_acte_cession: @investisseur.date_acte_cession, date_acte_concession: @investisseur.date_acte_concession, date_approbation_eie: @investisseur.date_approbation_eie, date_arrete_concession: @investisseur.date_arrete_concession, date_arrete_exploitation: @investisseur.date_arrete_exploitation, date_arrete_permis_construire: @investisseur.date_arrete_permis_construire, date_decision_creation_prealabre: @investisseur.date_decision_creation_prealabre, date_depot_demande: @investisseur.date_depot_demande, date_depot_dossier: @investisseur.date_depot_dossier, date_depot_dossier_permis_construire: @investisseur.date_depot_dossier_permis_construire, date_examen_demande: @investisseur.date_examen_demande, date_paiment: @investisseur.date_paiment, email: @investisseur.email, emplois_reel: @investisseur.emplois_reel, fax: @investisseur.fax, filieres_industrielles: @investisseur.filieres_industrielles, intitule_projet_arabe: @investisseur.intitule_projet_arabe, intitule_projet_francais: @investisseur.intitule_projet_francais, localisation_projet: @investisseur.localisation_projet, mise_en_service: @investisseur.mise_en_service, montant_concession: @investisseur.montant_concession, montant_investissement: @investisseur.montant_investissement, nmbr_emplois: @investisseur.nmbr_emplois, nom_prenom_gerant_arabe: @investisseur.nom_prenom_gerant_arabe, nom_prenom_gerant_francais: @investisseur.nom_prenom_gerant_francais, num_acte_cession: @investisseur.num_acte_cession, num_acte_concession: @investisseur.num_acte_concession, num_arrete_concession: @investisseur.num_arrete_concession, num_arrete_exploitation: @investisseur.num_arrete_exploitation, num_arrete_permis_construire: @investisseur.num_arrete_permis_construire, num_decision: @investisseur.num_decision, num_decision_andi: @investisseur.num_decision_andi, num_depot_dossier: @investisseur.num_depot_dossier, num_depot_dossier_permis_construire: @investisseur.num_depot_dossier_permis_construire, num_dossier: @investisseur.num_dossier, num_lot: @investisseur.num_lot, num_telephone: @investisseur.num_telephone, observation: @investisseur.observation, p_droits_etude_vrd: @investisseur.p_droits_etude_vrd, raison_sociale_arabe: @investisseur.raison_sociale_arabe, raison_sociale_francais: @investisseur.raison_sociale_francais, secteur_activite: @investisseur.secteur_activite, site: @investisseur.site, superficie_demandee: @investisseur.superficie_demandee, superficie_octroyee: @investisseur.superficie_octroyee, taux_avancement_investissement: @investisseur.taux_avancement_investissement, taux_avancement_traveux: @investisseur.taux_avancement_traveux } }
    assert_redirected_to investisseur_url(@investisseur)
  end

  test "should destroy investisseur" do
    assert_difference('Investisseur.count', -1) do
      delete investisseur_url(@investisseur)
    end

    assert_redirected_to investisseurs_url
  end
end
