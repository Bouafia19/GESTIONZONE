class PromotionImmobilieresController < InheritedResources::Base
def index
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
  datatable_paginate([:promotion_immobiliere],['code_zone;nom_zone;commune;wilaya',['promotion_immobilieres',"promotion_immobilieres.dat_arrete_creation >='#{Date.parse(session[:start_pub])}' and promotion_immobilieres.dat_arrete_creation <='#{Date.parse(session[:end_pub])}'"]])
end

  private

    def promotion_immobiliere_params
      params.require(:promotion_immobiliere).permit(:code_zone, :type_zone, :nom_zone, :commune, :wilaya, :num_arrete_creation, :dat_arrete_creation, :superf_total, :superf_cessible, :superf_vrd, :nbr_lots, :nbr_lot_attribues, :nbr_lot_cession, :nbr_lot_concession, :observation)
    end
end

