var defaultFill = new ol.style.Fill({
   color: 'rgba(255,255,255,0.4)'
 });
 var defaultStroke = new ol.style.Stroke({
   color: '#3399CC',
   width: 1.25
 });
 var defaultSelectionFill = new ol.style.Fill({
   color: 'rgba(255,255,0,0.4)'
 });
 var defaultSelectionStroke = new ol.style.Stroke({
   color: '#FFFF00',
   width: 1.25
 });



                    var textStyleCache_zi_setif_extension={}
                    var clusterStyleCache_zi_setif_extension={}
                    var style_zi_setif_extension = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(0,0,0,0.545098039216)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(220,191,127,0.545098039216)"})
                        })
                        ];
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };
                    var selectionStyle_zi_setif_extension = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(255, 204, 0, 1)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(255, 204, 0, 1)"})
                        })
                        ]
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };

                    var textStyleCache_zi_el_eulma={}
                    var clusterStyleCache_zi_el_eulma={}
                    var style_zi_el_eulma = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(0,0,0,0.639215686275)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(99,246,119,0.639215686275)"})
                        })
                        ];
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };
                    var selectionStyle_zi_el_eulma = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(255, 204, 0, 1)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(255, 204, 0, 1)"})
                        })
                        ]
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };

                    var textStyleCache_zi_ouled_saber={}
                    var clusterStyleCache_zi_ouled_saber={}
                    var style_zi_ouled_saber = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(0,0,0,0.525490196078)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(189,181,64,0.525490196078)"})
                        })
                        ];
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };
                    var selectionStyle_zi_ouled_saber = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(255, 204, 0, 1)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(255, 204, 0, 1)"})
                        })
                        ]
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };

                    var textStyleCache_zi_setif_ancienne={}
                    var clusterStyleCache_zi_setif_ancienne={}
                    var style_zi_setif_ancienne = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(0,0,0,0.635294117647)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(18,227,161,0.635294117647)"})
                        })
                        ];
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };
                    var selectionStyle_zi_setif_ancienne = function(feature, resolution){
                        
                        var value = "";
                        var style = [ new ol.style.Style({
                            stroke: new ol.style.Stroke({color: "rgba(255, 204, 0, 1)", lineDash: null, width: 0}),
                        fill: new ol.style.Fill({color: "rgba(255, 204, 0, 1)"})
                        })
                        ]
                        var allStyles = [];
                        
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };
var baseLayers = [new ol.layer.Tile({
                        type: 'base',
                        title: 'No base layer'
                    }),new ol.layer.Tile({
    type: 'base',
    title: 'OSM Mapnik',
    source: new ol.source.OSM(),
    projection: 'EPSG:3857'
})
];var baseLayersGroup = new ol.layer.Group({showContent: true,'type':
                    'base-group', 'title': 'Base maps', layers: baseLayers});
var overlayLayers = [];var overlaysGroup = new ol.layer.Group({showContent: true, 'title': 'Overlays', layers: overlayLayers});
var lyr_zi_setif_extension = new ol.layer.Vector({
                    opacity: 1.0,
                    source: new ol.source.Vector(),
                     
                    style: style_zi_setif_extension,
                    selectedStyle: selectionStyle_zi_setif_extension,
                    title: "ZI_SETIF_EXTENSION",
                    id: "ZI_SETIF_EXTENSION20190403115009145",
                    filters: [],
                    timeInfo: null,
                    isSelectable: true,
                    popupInfo: ""
                });
zi_setif_extension_geojson_callback = function(geojson) {
                              lyr_zi_setif_extension.getSource().addFeatures(new ol.format.GeoJSON().readFeatures(geojson));
                        };
var lyr_zi_el_eulma = new ol.layer.Vector({
                    opacity: 1.0,
                    source: new ol.source.Vector(),
                     
                    style: style_zi_el_eulma,
                    selectedStyle: selectionStyle_zi_el_eulma,
                    title: "ZI_EL_EULMA",
                    id: "ZI_EL_EULMA20190403115009331",
                    filters: [],
                    timeInfo: null,
                    isSelectable: true,
                    popupInfo: ""
                });
zi_el_eulma_geojson_callback = function(geojson) {
                              lyr_zi_el_eulma.getSource().addFeatures(new ol.format.GeoJSON().readFeatures(geojson));
                        };
var lyr_zi_ouled_saber = new ol.layer.Vector({
                    opacity: 1.0,
                    source: new ol.source.Vector(),
                     
                    style: style_zi_ouled_saber,
                    selectedStyle: selectionStyle_zi_ouled_saber,
                    title: "ZI_OULED_SABER",
                    id: "ZI_OULED_SABER20190403115009375",
                    filters: [],
                    timeInfo: null,
                    isSelectable: true,
                    popupInfo: ""
                });
zi_ouled_saber_geojson_callback = function(geojson) {
                              lyr_zi_ouled_saber.getSource().addFeatures(new ol.format.GeoJSON().readFeatures(geojson));
                        };
var lyr_zi_setif_ancienne = new ol.layer.Vector({
                    opacity: 1.0,
                    source: new ol.source.Vector(),
                     
                    style: style_zi_setif_ancienne,
                    selectedStyle: selectionStyle_zi_setif_ancienne,
                    title: "ZI_SETIF_ANCIENNE",
                    id: "ZI_SETIF_ANCIENNE20190403115009438",
                    filters: [],
                    timeInfo: null,
                    isSelectable: true,
                    popupInfo: ""
                });
zi_setif_ancienne_geojson_callback = function(geojson) {
                              lyr_zi_setif_ancienne.getSource().addFeatures(new ol.format.GeoJSON().readFeatures(geojson));
                        };

lyr_zi_setif_extension.setVisible(true);
lyr_zi_el_eulma.setVisible(true);
lyr_zi_ouled_saber.setVisible(true);
lyr_zi_setif_ancienne.setVisible(true);for (var i=0;i<baseLayers.length;i++){baseLayers[i].setVisible(false);}baseLayers[1].setVisible(true);
var layersList = [lyr_zi_setif_extension,lyr_zi_el_eulma,lyr_zi_ouled_saber,lyr_zi_setif_ancienne];layersList.unshift(baseLayersGroup);
var printLayouts = [];
var view = new ol.View({ maxZoom: 32, minZoom: 1, projection: 'EPSG:3857'});
var originalExtent = [600553.957809, 4318080.433958, 618760.677619, 4327539.214018];

var map = new ol.Map({
  layers: layersList,
  view: view,
  controls: [new ol.control.Rotate({autoHide: false})]
});



var BasicApp = React.createClass({
  componentDidMount() {
    map.setTarget(ReactDOM.findDOMNode(this.refs.map));
    view = map.getView();
    view.fit(originalExtent, map.getSize());
    
  },
  _toggle(el) {
    if (el.style.display === 'block') {
      el.style.display = 'none';
    } else {
      el.style.display = 'block';
    }
  },
  _toggleTable() {
    this._toggle(document.getElementById('table-panel'));
    this.refs.table.getWrappedInstance().setDimensionsOnState();
  },
  _toggleWFST() {
    this._toggle(document.getElementById('wfst'));
  },
  _toggleQuery() {
    this._toggle(document.getElementById('query-panel'));
  },
  _toggleEdit() {
    this._toggle(document.getElementById('edit-tool-panel'));
  },
  _toggleAboutPanel() {
    this._toggle(document.getElementById('about-panel'));
  },
  _toggleChartPanel(evt) {
    evt.preventDefault();
    this._toggle(document.getElementById('chart-panel'));
  },
  _navigationFunc() {
    ToolActions.activateTool(null, 'navigation');
  },
  render() {
    var options = [{jsx: React.createElement("div", {id:'geocoding', className:'pull-right'},
                                        React.createElement(Geocoding, {})),
                                exclude: true},
{text: 'Table', icon: 'list-alt', onClick: this._toggleTable.bind(this)},
{jsx: React.createElement(Measure, {toggleGroup:'navigation', map:map})},
{
                              jsx: React.createElement(Select, {toggleGroup: 'navigation', map:map})
                            }, {
                              text: 'Navigation',
                              icon: 'hand-paper-o',
                              onClick: this._navigationFunc.bind(this)
                            },
{jsx: React.createElement(QGISPrint, {map:map, layouts:printLayouts, thumbnailPath: './resources/print/',})},
{exclude: true, jsx: React.createElement("a", {className:"navbar-brand", href:"#"}, "SETIF INVEST")}];
    return React.createElement("article", null,
      React.createElement(Toolbar, {options: options}
      ),
      React.createElement("div", {id: 'content'},
        React.createElement("div", {id: 'map', ref: 'map'}
          ,
React.createElement("div", {id:'geocoding-results', className:'geocoding-results'},
                                    React.createElement(GeocodingResults, {map:map})
                                  ),
React.createElement("div", {id: 'popup', className: 'ol-popup'},
                                    React.createElement(InfoPopup, {map: map, hover: false})
                                  )
        )
        ,
 React.createElement("div", {id: 'table-panel', className: 'attributes-table'},
                                          React.createElement(FeatureTable, {offset: [20, 20], ref: 'table', resizeTo: 'table-panel', layer: lyr_zi_setif_extension, pointZoom:16, map: map})
                                    ),
React.createElement("div",{id: "layerlist"},
                                    React.createElement(LayerList, {showOpacity:false, showDownload:false,
                                        showGroupContent:true, showZoomTo:false, allowReordering:false,
                                        allowFiltering:true, tipLabel:'layers', expandOnHover:true,
                                        downloadFormat:'GeoJSON', map:map})),
React.createElement("div", {id:'geolocation-control', className:'ol-unselectable ol-control'},
                                    React.createElement(Geolocation, {map:map})
                                  )
      )
    );
  }
});

ReactDOM.render(React.createElement(IntlProvider, {locale: 'en'}, React.createElement(BasicApp)), document.getElementById('main'));


