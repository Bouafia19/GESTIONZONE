class InvestisseursController < ApplicationController
  before_action :set_investisseur, only: [:show, :edit, :update, :destroy]

  # GET /investisseurs
  # GET /investisseurs.json
  def index

=begin
    #datatable_paginate([:investisseur],['raison_sociale_francais;nom_prenom_gerant_francais;intitule_projet_francais',['investisseurs',"investisseurs.date_depot_demande >='#{Date.parse(session[:start_pub])}' and investisseurs.date_depot_demande <='#{Date.parse(session[:end_pub])}'"]])

    datatable_paginate([:investisseur],['raison_sociale_francais;nom_prenom_gerant_francais;intitule_projet_francais'])
@investr = Investisseur.all

    @invest = Investisseur.all.count

    respond_to do |format|
      format.html{render(template: "investisseurs/index.html.erb", locals: {paginate: @paginate})}
      format.pdf {render pdf: "investisseur",
                         template: "investisseurs/index.pdf.erb",
                         locals: {:investisseur => @investisseurs}}
      format.xlsx {render xlsx: "investisseur",
                          template: "investisseurs/index.xlsx.axlsx",
                          locals: {:investisseur => @investisseurs}}
    end
=end
@investr = Investisseur.all
  end

  # GET /investisseurs/1
  # GET /investisseurs/1.json
  def show
  end



  def search

    #store all the projects that match the name searched
    #@lots = Lot.where("num_lot LIKE ? ", "%#{params[:num_lot]}%")
    #store all the clients that match the name searched
    #@investisseurs = Investisseur.where("raison_sociale_francais LIKE ? ", "%#{params[:raison_sociale_francais]}%")
    #params[:site] = nil
    #params[:raison_sociale_francais] = nil
    @lots = Lot.where(['num_lot LIKE ? AND nom_zone LIKE ? AND class_activite LIKE ? AND type_lot LIKE ? AND superficie > ?', "%#{params[:num_lot]}%","%#{params[:nom_zone]}%", "%#{params[:class_activite]}%","%#{params[:type_lot]}%",params[:superficie]])

    @investisseurs = Investisseur.where(['raison_sociale_francais LIKE ? AND site LIKE ? AND secteur_activite LIKE ? AND commune LIKE ? AND montant_investissement >= ? ', "%#{params[:raison_sociale_francais]}%","%#{params[:site]}%", "%#{params[:secteur_activite]}%","%#{params[:commune]}%",params[:montant_investissement]])

    @invest = Investisseur.all





  end
  # GET /investisseurs/new
  def new
    @investisseur = Investisseur.new
  end


  def bord
    @zoneact = ZoneActivite.all.count
    @zoneind = ZoneIndustrielle.all.count
    @horszone = HorsZone.all.count
    @promotionimob = PromotionImmobiliere.all.count
    @invest = Investisseur.all.count
    @user = User.all.count
    @zone = Zone.all.count
    @zea = ZoneEntrepotActivite.all.count

    @investisseurs = Investisseur.all
  end


  # GET /investisseurs/1/edit
  def edit
  end

  def alert_stock
    @investisseur = Investisseur.all
  end
  # POST /investisseurs
  # POST /investisseurs.json
  def create
    @investisseur = Investisseur.new(investisseur_params)

    respond_to do |format|
      if @investisseur.save
        format.html { redirect_to @investisseur, notice: 'Investisseur was successfully created.' }
        format.json { render :show, status: :created, location: @investisseur }
      else
        format.html { render :new }
        format.json { render json: @investisseur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investisseurs/1
  # PATCH/PUT /investisseurs/1.json
  def update
    respond_to do |format|
      if @investisseur.update(investisseur_params)

        UserMailer.alert_email(current_user,@investisseur.raison_sociale_francais).deliver_now

        require 'json'

        case @investisseur.localisation_projet
        when "ZI EL EULMA"
=begin
          hash = JSON.parse(File.read("public/eulma_lors_#{@investisseur.idjson}.json"))
          hash["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/eulma_lors_#{@investisseur.idjson}.json","w") do |f|
            f.write(hash.to_json)

          end
=end
          hash = JSON.parse(File.read("public/zone_ind_6.json"))
          hash["features"][@investisseur.idjson - 1]["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/zone_ind_6.json","w") do |f|
            f.write(hash.to_json)
          end

          ##################################################################
        when "ZI ANCIENNE"
=begin
          hash = JSON.parse(File.read("public/ancienne_#{@investisseur.idjson}.json"))

          hash["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/ancienne_#{@investisseur.idjson}.json","w") do |f|
            f.write(hash.to_json)

          end

=end
          hash = JSON.parse(File.read("public/zone_ind_5.json"))
          hash["features"][@investisseur.idjson - 1]["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/zone_ind_5.json","w") do |f|
            f.write(hash.to_json)
          end


          ##########################################################################
        when "ZI EXTENSION"
=begin
          hash = JSON.parse(File.read("public/extension_#{@investisseur.idjson}.json"))
          hash["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/extension_#{@investisseur.idjson}.json","w") do |f|
            f.write(hash.to_json)

          end
=end
          hash = JSON.parse(File.read("public/zone_ind_4.json"))
          hash["features"][@investisseur.idjson - 1]["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/zone_ind_4.json","w") do |f|
            f.write(hash.to_json)
          end



          #############################################################################
        when "OULED SABER"
=begin
          hash = JSON.parse(File.read("public/saber_#{@investisseur.idjson}.json"))
          hash["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/saber_#{@investisseur.idjson}.json","w") do |f|
            f.write(hash.to_json)

          end
=end
          hash = JSON.parse(File.read("public/zone_ind_3.json"))
          hash["features"][@investisseur.idjson - 1]["properties"]["_R_socia_français"]  = @investisseur.raison_sociale_francais
          File.open("public/zone_ind_3.json","w") do |f|
            f.write(hash.to_json)
          end


        end



        format.html { redirect_to @investisseur, notice: 'Investisseur was successfully updated.' }
        format.json { render :show, status: :ok, location: @investisseur }
      else
        format.html { render :edit }
        format.json { render json: @investisseur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investisseurs/1
  # DELETE /investisseurs/1.json
  def destroy
    @investisseur.destroy
    respond_to do |format|
      format.html { redirect_to investisseurs_url, notice: 'Investisseur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investisseur
      @investisseur = Investisseur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investisseur_params
      params.require(:investisseur).permit(:num_dossier, :date_depot_demande, :raison_sociale_arabe, :nom_prenom_gerant_arabe, :raison_sociale_francais, :nom_prenom_gerant_francais, :adresse, :num_telephone, :fax, :email, :intitule_projet_arabe, :intitule_projet_francais, :secteur_activite, :filieres_industrielles, :superficie_demandee, :montant_investissement, :nmbr_emplois, :date_examen_demande, :num_decision, :num_lot, :superficie_octroyee, :localisation_projet, :commune, :site, :p_droits_etude_vrd, :num_arrete_concession, :date_arrete_concession, :montant_concession, :date_paiment, :num_acte_concession, :date_acte_concession, :num_acte_cession, :date_acte_cession, :num_depot_dossier_permis_construire, :date_depot_dossier_permis_construire, :avis_services, :num_arrete_permis_construire, :date_arrete_permis_construire, :date_depot_dossier, :date_approbation_eie, :date_decision_creation_prealabre, :num_arrete_exploitation, :date_arrete_exploitation, :num_depot_dossier, :date_depot_dossier, :num_decision_andi, :taux_avancement_traveux, :taux_avancement_investissement, :mise_en_service, :emplois_reel, :changement_status, :observation,:document)
    end
end
