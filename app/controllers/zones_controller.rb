class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :edit, :update, :destroy]

  # GET /zones
  # GET /zones.json
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
    datatable_paginate([:zone],['code_zone;nom_zone;commune;wilaya',['zones',"zones.dat_arrete_creation >='#{Date.parse(session[:start_pub])}' and zones.dat_arrete_creation <='#{Date.parse(session[:end_pub])}'"]])

  end

  # GET /zones/1
  # GET /zones/1.json
  def show
  end

  def ouled_saber
  end

  def el_eulma
  end

  def extension
  end

  def ancienne
  end

  def setif_inve
  end

  def leaflet
    @states = State.all
  end

  def static
  end

  def search
    #store all the projects that match the name searched
    #@lots = Lot.where("num_lot LIKE ? ", "%#{params[:num_lot]}%")
    #store all the clients that match the name searched
    #@investisseurs = Investisseur.where("raison_sociale_francais LIKE ? ", "%#{params[:raison_sociale_francais]}%")
    #params[:site] = nil
    #params[:raison_sociale_francais] = nil

    @investisseurs = Investisseur.where(['site LIKE ? AND raison_sociale_francais LIKE ? AND commune LIKE ?', "%#{params[:site]}%", "%#{params[:raison_sociale_francais]}%","%#{params[:commune]}%"])

    def self.search(search_project, search_client)
      return scoped unless search_project.present? || search_client.present?
      where(['project_name LIKE ? AND client LIKE ?', "%#{search_project}%", "%#{search_client}%"])
    end

  end
  # GET /zones/new
  def new
    @zone = Zone.new
  end

  # GET /zones/1/edit
  def edit

  end

  # POST /zones
  # POST /zones.json
  def create
    @zone = Zone.new(zone_params)

    respond_to do |format|
      if @zone.save
        format.html { redirect_to @zone, notice: 'Zone was successfully created.' }
        format.json { render :show, status: :created, location: @zone }
      else
        format.html { render :new }
        format.json { render json: @zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zones/1
  # PATCH/PUT /zones/1.json
  def update
    respond_to do |format|

      if @zone.update(zone_params)

        UserMailer.welcome_email(current_user).deliver_now

        format.html { redirect_to @zone, notice: 'Zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @zone }
      else
        format.html { render :edit }
        format.json { render json: @zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zones/1
  # DELETE /zones/1.json
  def destroy
    @zone.destroy
    respond_to do |format|
      format.html { redirect_to zones_url, notice: 'Zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zone_params
      params.require(:zone).permit(:code_zone, :type_zone, :nom_zone, :commune, :wilaya, :num_arrete_creation, :dat_arrete_creation, :superf_total, :superf_cessible, :superf_vrd, :nbr_lots, :nbr_lot_attribues, :nbr_lot_cession, :nbr_lot_concession, :observation)
    end
end
