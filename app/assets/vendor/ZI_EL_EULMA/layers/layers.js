var wms_layers = [];
var baseLayer = new ol.layer.Group({
    'title': '',
    layers: [
new ol.layer.Tile({
    'title': 'OSM',
    'type': 'base',
    source: new ol.source.OSM()
})
]
});
var format_ZI_EL_EULMA_0 = new ol.format.GeoJSON();
var features_ZI_EL_EULMA_0 = format_ZI_EL_EULMA_0.readFeatures(json_ZI_EL_EULMA_0, 
            {dataProjection: 'EPSG:4326', featureProjection: 'EPSG:3857'});
var jsonSource_ZI_EL_EULMA_0 = new ol.source.Vector({
    attributions: [new ol.Attribution({html: '<a href=""></a>'})],
});
jsonSource_ZI_EL_EULMA_0.addFeatures(features_ZI_EL_EULMA_0);var lyr_ZI_EL_EULMA_0 = new ol.layer.Vector({
                declutter: true,
                source:jsonSource_ZI_EL_EULMA_0, 
                style: style_ZI_EL_EULMA_0,
                title: '<img src="styles/legend/ZI_EL_EULMA_0.png" /> ZI_EL_EULMA'
            });

lyr_ZI_EL_EULMA_0.setVisible(true);
var layersList = [baseLayer,lyr_ZI_EL_EULMA_0];
lyr_ZI_EL_EULMA_0.set('fieldAliases', {'NÂ°_de_lot': 'NÂ°_de_lot', '_N_dossier': '_N_dossier', '_D_dep_demande': '_D_dep_demande', '_R_socia_arabe': '_R_socia_arabe', '_N_P_gerant_arabe': '_N_P_gerant_arabe', '_R_socia_français': '_R_socia_français', '_N_P_gerant_français': '_N_P_gerant_français', '_Adresse': '_Adresse', '_N_tele': '_N_tele', '_Fax': '_Fax', '_Email': '_Email', '_Int_projet_arabe': '_Int_projet_arabe', '_Int_projet_français': '_Int_projet_français', '_Sect_Activite': '_Sect_Activite', '_Fil_Indust': '_Fil_Indust', '_S_demand_m²': '_S_demand_m²', '_Mont_Investis_Millions_DA': '_Mont_Investis_Millions_DA', '_Nomb_emploi': '_Nomb_emploi', '_D_examen_demande_PV': '_D_examen_demande_PV', '_N_decision': '_N_decision', '_N_de_lot_1': '_N_de_lot_1', '_S_octroyee_m²': '_S_octroyee_m²', '_Locali_projet': '_Locali_projet', '_Commune': '_Commune', '_Site': '_Site', '_P/droi_Etude_vrd': '_P/droi_Etude_vrd', '_N_Arr_conces': '_N_Arr_conces', '_D_Arret_conces': '_D_Arret_conces', '_Mont_conces': '_Mont_conces', '_Dat_paiem': '_Dat_paiem', '_N_Act_conces': '_N_Act_conces', '_Da_Acte_conces': '_Da_Acte_conces', '_N_Act_cession': '_N_Act_cession', '_Dat_Acte_cession': '_Dat_Acte_cession', '_N_depot_permis_de_const': '_N_depot_permis_de_const', '_D_depot_dospermis_de_construire': '_D_depot_dospermis_de_construire', '_Avis_services': '_Avis_services', '_N_Arrt_perm_const': '_N_Arrt_perm_const', '_Da_Arrt_permi_constr': '_Da_Arrt_permi_constr', '_Dat_Depot_Dossier': '_Dat_Depot_Dossier', '_Dat_Approb_EIE': '_Dat_Approb_EIE', '_Dat_Deci_Cre_Prealabre': '_Dat_Deci_Cre_Prealabre', '_N_Arrt_Exploit': '_N_Arrt_Exploit', '_Dat_Arrt_Exploit': '_Dat_Arrt_Exploit', '_N_Depot_doss': '_N_Depot_doss', '_Date_Depot_dossier': '_Date_Depot_dossier', '_N_Deci_ANDI': '_N_Deci_ANDI', '_Taux_avance_travaux': '_Taux_avance_travaux', '_Taux_avance_investis': '_Taux_avance_investis', '_Mise_en_service_oui_non': '_Mise_en_service_oui_non', '_Emplois_reel': '_Emplois_reel', '_Changem_statut': '_Changem_statut', '_Observation': '_Observation', });
lyr_ZI_EL_EULMA_0.set('fieldImages', {'NÂ°_de_lot': 'TextEdit', '_N_dossier': 'TextEdit', '_D_dep_demande': 'TextEdit', '_R_socia_arabe': 'TextEdit', '_N_P_gerant_arabe': 'TextEdit', '_R_socia_français': 'TextEdit', '_N_P_gerant_français': 'TextEdit', '_Adresse': 'TextEdit', '_N_tele': 'TextEdit', '_Fax': 'TextEdit', '_Email': 'TextEdit', '_Int_projet_arabe': 'TextEdit', '_Int_projet_français': 'TextEdit', '_Sect_Activite': 'TextEdit', '_Fil_Indust': 'TextEdit', '_S_demand_m²': 'TextEdit', '_Mont_Investis_Millions_DA': 'TextEdit', '_Nomb_emploi': 'TextEdit', '_D_examen_demande_PV': 'TextEdit', '_N_decision': 'TextEdit', '_N_de_lot_1': 'TextEdit', '_S_octroyee_m²': 'TextEdit', '_Locali_projet': 'TextEdit', '_Commune': 'TextEdit', '_Site': 'TextEdit', '_P/droi_Etude_vrd': 'TextEdit', '_N_Arr_conces': 'TextEdit', '_D_Arret_conces': 'TextEdit', '_Mont_conces': 'TextEdit', '_Dat_paiem': 'TextEdit', '_N_Act_conces': 'TextEdit', '_Da_Acte_conces': 'TextEdit', '_N_Act_cession': 'TextEdit', '_Dat_Acte_cession': 'TextEdit', '_N_depot_permis_de_const': 'TextEdit', '_D_depot_dospermis_de_construire': 'TextEdit', '_Avis_services': 'TextEdit', '_N_Arrt_perm_const': 'TextEdit', '_Da_Arrt_permi_constr': 'TextEdit', '_Dat_Depot_Dossier': 'TextEdit', '_Dat_Approb_EIE': 'TextEdit', '_Dat_Deci_Cre_Prealabre': 'TextEdit', '_N_Arrt_Exploit': 'TextEdit', '_Dat_Arrt_Exploit': 'TextEdit', '_N_Depot_doss': 'TextEdit', '_Date_Depot_dossier': 'TextEdit', '_N_Deci_ANDI': 'TextEdit', '_Taux_avance_travaux': 'TextEdit', '_Taux_avance_investis': 'TextEdit', '_Mise_en_service_oui_non': 'TextEdit', '_Emplois_reel': 'TextEdit', '_Changem_statut': 'TextEdit', '_Observation': 'TextEdit', });
lyr_ZI_EL_EULMA_0.set('fieldLabels', {'NÂ°_de_lot': 'inline label', '_N_dossier': 'inline label', '_D_dep_demande': 'inline label', '_R_socia_arabe': 'inline label', '_N_P_gerant_arabe': 'inline label', '_R_socia_français': 'inline label', '_N_P_gerant_français': 'inline label', '_Adresse': 'inline label', '_N_tele': 'inline label', '_Fax': 'inline label', '_Email': 'inline label', '_Int_projet_arabe': 'inline label', '_Int_projet_français': 'inline label', '_Sect_Activite': 'inline label', '_Fil_Indust': 'inline label', '_S_demand_m²': 'inline label', '_Mont_Investis_Millions_DA': 'inline label', '_Nomb_emploi': 'inline label', '_D_examen_demande_PV': 'inline label', '_N_decision': 'inline label', '_N_de_lot_1': 'inline label', '_S_octroyee_m²': 'inline label', '_Locali_projet': 'inline label', '_Commune': 'inline label', '_Site': 'inline label', '_P/droi_Etude_vrd': 'inline label', '_N_Arr_conces': 'inline label', '_D_Arret_conces': 'inline label', '_Mont_conces': 'inline label', '_Dat_paiem': 'inline label', '_N_Act_conces': 'inline label', '_Da_Acte_conces': 'inline label', '_N_Act_cession': 'inline label', '_Dat_Acte_cession': 'inline label', '_N_depot_permis_de_const': 'inline label', '_D_depot_dospermis_de_construire': 'inline label', '_Avis_services': 'inline label', '_N_Arrt_perm_const': 'inline label', '_Da_Arrt_permi_constr': 'inline label', '_Dat_Depot_Dossier': 'inline label', '_Dat_Approb_EIE': 'inline label', '_Dat_Deci_Cre_Prealabre': 'inline label', '_N_Arrt_Exploit': 'inline label', '_Dat_Arrt_Exploit': 'inline label', '_N_Depot_doss': 'inline label', '_Date_Depot_dossier': 'inline label', '_N_Deci_ANDI': 'inline label', '_Taux_avance_travaux': 'inline label', '_Taux_avance_investis': 'inline label', '_Mise_en_service_oui_non': 'inline label', '_Emplois_reel': 'inline label', '_Changem_statut': 'inline label', '_Observation': 'inline label', });
lyr_ZI_EL_EULMA_0.on('precompose', function(evt) {
    evt.context.globalCompositeOperation = 'normal';
});