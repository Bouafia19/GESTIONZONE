class LotsController < ApplicationController
  before_action :set_lot, only: [:show, :edit, :update, :destroy]

  # GET /lots
  # GET /lots.json
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

    datatable_paginate([:lot],['activite;investisseur;type_lot',['lots',"lots.date_attribution >='#{Date.parse(session[:start_pub])}' and lots.date_attribution <='#{Date.parse(session[:end_pub])}'"]])
  end

  # GET /lots/1
  # GET /lots/1.json
  def show
    @sot = Lot.all
    respond_to do |format|
      format.html
      format.pdf {render pdf: "lot",
                         template: "lots/show.pdf.erb",
                         locals: {:lot => @lot}}


    end
  end

  # GET /lots/new
  def new
    @lot = Lot.new
  end

  # GET /lots/1/edit
  def edit
  end

  # POST /lots
  # POST /lots.json
  def create
    @lot = Lot.new(lot_params)

    respond_to do |format|
      if @lot.save
        format.html { redirect_to @lot, notice: 'Lot was successfully created.' }
        format.json { render :show, status: :created, location: @lot }
      else
        format.html { render :new }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lots/1
  # PATCH/PUT /lots/1.json
  def update
    respond_to do |format|
      if @lot.update(lot_params)
        format.html { redirect_to @lot, notice: 'Lot was successfully updated.' }
        format.json { render :show, status: :ok, location: @lot }
      else
        format.html { render :edit }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lots/1
  # DELETE /lots/1.json
  def destroy
    @lot.destroy
    respond_to do |format|
      format.html { redirect_to lots_url, notice: 'Lot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lot
      @lot = Lot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lot_params
      params.require(:lot).permit(:num_lot, :activite, :investisseur, :type_lot, :situation_physique, :situation_juridique, :date_act, :num_act, :date_attribution, :date_resolution, :etat_avancement, :nom_zone, :class_activite, :observation,:photo,:document)
    end
end
