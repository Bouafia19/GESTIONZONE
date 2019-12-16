class ZoneEntrepotActivitesController < InheritedResources::Base
def index
  @zone_entrepot_activitez = ZoneEntrepotActivite.all
end

  private

    def zone_entrepot_activite_params
      params.require(:zone_entrepot_activite).permit(:code_zone, :type_zone, :nom_zone, :commune, :wilaya, :num_arrete_creation, :dat_arrete_creation, :superf_total, :superf_cessible, :superf_vrd, :nbr_lots, :nbr_lot_attribues, :nbr_lot_cession, :nbr_lot_concession, :observation)
    end
end

