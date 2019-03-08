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
var format_Parcellaire_ZI_SETIF__0 = new ol.format.GeoJSON();
var features_Parcellaire_ZI_SETIF__0 = format_Parcellaire_ZI_SETIF__0.readFeatures(json_Parcellaire_ZI_SETIF__0, 
            {dataProjection: 'EPSG:4326', featureProjection: 'EPSG:3857'});
var jsonSource_Parcellaire_ZI_SETIF__0 = new ol.source.Vector({
    attributions: [new ol.Attribution({html: '<a href=""></a>'})],
});
jsonSource_Parcellaire_ZI_SETIF__0.addFeatures(features_Parcellaire_ZI_SETIF__0);var lyr_Parcellaire_ZI_SETIF__0 = new ol.layer.Vector({
                declutter: true,
                source:jsonSource_Parcellaire_ZI_SETIF__0, 
                style: style_Parcellaire_ZI_SETIF__0,
                title: '<img src="styles/legend/Parcellaire_ZI_SETIF__0.png" /> Parcellaire_ZI_SETIF_'
            });var format_investisseurs_1 = new ol.format.GeoJSON();
var features_investisseurs_1 = format_investisseurs_1.readFeatures(json_investisseurs_1, 
            {dataProjection: 'EPSG:4326', featureProjection: 'EPSG:3857'});
var jsonSource_investisseurs_1 = new ol.source.Vector({
    attributions: [new ol.Attribution({html: '<a href=""></a>'})],
});
jsonSource_investisseurs_1.addFeatures(features_investisseurs_1);cluster_investisseurs_1 = new ol.source.Cluster({
  distance: 10,
  source: jsonSource_investisseurs_1
});var lyr_investisseurs_1 = new ol.layer.Vector({
                declutter: true,
                source:cluster_investisseurs_1, 
                style: style_investisseurs_1,
                title: '<img src="styles/legend/investisseurs_1.png" /> investisseurs'
            });

lyr_Parcellaire_ZI_SETIF__0.setVisible(true);lyr_investisseurs_1.setVisible(true);
var layersList = [baseLayer,lyr_Parcellaire_ZI_SETIF__0,lyr_investisseurs_1];
lyr_Parcellaire_ZI_SETIF__0.set('fieldAliases', {'OBJECTID': 'OBJECTID', 'NÂ°_Lot': 'NÂ°_Lot', 'Type_lot': 'Type_lot', 'Situation_': 'Situation_', 'Situation1': 'Situation1', 'Date_d_act': 'Date_d_act', 'Date_de_r': 'Date_de_r', 'NÂ°d_act': 'NÂ°d_act', 'Date_d_att': 'Date_d_att', 'Prix_de_ve': 'Prix_de_ve', 'activite_i': 'activite_i', 'investisse': 'investisse', 'Observatio': 'Observatio', 'ZONE_': 'ZONE_', 'SHAPE_Leng': 'SHAPE_Leng', 'SHAPE_Area': 'SHAPE_Area', 'Surfacelot': 'Surfacelot', 'NÂ°_permis': 'NÂ°_permis', 'Date_permi': 'Date_permi', 'Secteur__a': 'Secteur__a', });
lyr_investisseurs_1.set('fieldAliases', {'NÂ°_Lot': 'NÂ°_Lot', 'Type_lot': 'Type_lot', 'Situation_': 'Situation_', 'Situation1': 'Situation1', 'Date_d_act': 'Date_d_act', 'Date_de_r': 'Date_de_r', 'NÂ°d_act': 'NÂ°d_act', 'Date_d_att': 'Date_d_att', 'activite_i': 'activite_i', 'investisse': 'investisse', 'Observatio': 'Observatio', 'ZONE_': 'ZONE_', 'Adresse': 'Adresse', 'Email': 'Email', 'NÂ°_Faxe': 'NÂ°_Faxe', 'NÂ°_Teleph': 'NÂ°_Teleph', });
lyr_Parcellaire_ZI_SETIF__0.set('fieldImages', {'OBJECTID': 'TextEdit', 'NÂ°_Lot': 'TextEdit', 'Type_lot': 'TextEdit', 'Situation_': 'TextEdit', 'Situation1': 'TextEdit', 'Date_d_act': 'TextEdit', 'Date_de_r': 'TextEdit', 'NÂ°d_act': 'TextEdit', 'Date_d_att': 'TextEdit', 'Prix_de_ve': 'TextEdit', 'activite_i': 'TextEdit', 'investisse': 'TextEdit', 'Observatio': 'TextEdit', 'ZONE_': 'TextEdit', 'SHAPE_Leng': 'TextEdit', 'SHAPE_Area': 'TextEdit', 'Surfacelot': 'TextEdit', 'NÂ°_permis': 'TextEdit', 'Date_permi': 'TextEdit', 'Secteur__a': 'TextEdit', });
lyr_investisseurs_1.set('fieldImages', {'NÂ°_Lot': 'TextEdit', 'Type_lot': 'TextEdit', 'Situation_': 'TextEdit', 'Situation1': 'TextEdit', 'Date_d_act': 'TextEdit', 'Date_de_r': 'TextEdit', 'NÂ°d_act': 'TextEdit', 'Date_d_att': 'TextEdit', 'activite_i': 'TextEdit', 'investisse': 'TextEdit', 'Observatio': 'TextEdit', 'ZONE_': 'TextEdit', 'Adresse': 'TextEdit', 'Email': 'TextEdit', 'NÂ°_Faxe': 'TextEdit', 'NÂ°_Teleph': 'TextEdit', });
lyr_Parcellaire_ZI_SETIF__0.set('fieldLabels', {'OBJECTID': 'inline label', 'NÂ°_Lot': 'inline label', 'Type_lot': 'inline label', 'Situation_': 'inline label', 'Situation1': 'inline label', 'Date_d_act': 'inline label', 'Date_de_r': 'inline label', 'NÂ°d_act': 'inline label', 'Date_d_att': 'inline label', 'Prix_de_ve': 'inline label', 'activite_i': 'inline label', 'investisse': 'inline label', 'Observatio': 'inline label', 'ZONE_': 'inline label', 'SHAPE_Leng': 'inline label', 'SHAPE_Area': 'inline label', 'Surfacelot': 'inline label', 'NÂ°_permis': 'inline label', 'Date_permi': 'inline label', 'Secteur__a': 'inline label', });
lyr_investisseurs_1.set('fieldLabels', {'NÂ°_Lot': 'inline label', 'Type_lot': 'inline label', 'Situation_': 'inline label', 'Situation1': 'inline label', 'Date_d_act': 'inline label', 'Date_de_r': 'inline label', 'NÂ°d_act': 'inline label', 'Date_d_att': 'inline label', 'activite_i': 'inline label', 'investisse': 'inline label', 'Observatio': 'inline label', 'ZONE_': 'inline label', 'Adresse': 'inline label', 'Email': 'inline label', 'NÂ°_Faxe': 'inline label', 'NÂ°_Teleph': 'inline label', });
lyr_investisseurs_1.on('precompose', function(evt) {
    evt.context.globalCompositeOperation = 'normal';
});