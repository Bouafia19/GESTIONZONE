class HorsZonesController < InheritedResources::Base
  def index
=begin
    date1 = ("01/01/2019")
    date2 = Date.today.strftime("%d/%m/%Y")

    if params[:start_date]
      if Date.parse(params[:end_date]) < Date.parse(params[:start_date])
        flash[:alert] = 'Invalid dates'
      else
        session[:start_pub] = params[:start_date]
        session[:end_pub] = params[:end_date]
      end
    end
    session[:start_pub] ||= date1
    session[:end_pub] ||= date2
    datatable_paginate([:hors_zone],['code_zone;nom_zone;commune;wilaya',['hors_zones',"hors_zones.dat_arrete_creation >='#{Date.parse(session[:start_pub])}' and hors_zones.dat_arrete_creation <='#{Date.parse(session[:end_pub])}'"]])

=end
    @hors_zonez = HorsZone.all
  end
  def static
    @hors_zone = HorsZone.all

  end
  private

    def hors_zone_params
      params.require(:hors_zone).permit(:code_zone, :type_zone, :nom_zone, :commune, :wilaya, :num_arrete_creation, :dat_arrete_creation, :superf_total, :superf_cessible, :superf_vrd, :nbr_lots, :nbr_lot_attribues, :nbr_lot_cession, :nbr_lot_concession, :observation)
    end
end

