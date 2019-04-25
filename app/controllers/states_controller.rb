class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  # GET /states
  # GET /states.json
  def index
    @states = State.all
  end

  # GET /states/1
  # GET /states/1.json
  def show
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
  end

  # POST /states
  # POST /states.json
  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to @state, notice: 'State was successfully created.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :new }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /states/1
  # PATCH/PUT /states/1.json
  def update
    respond_to do |format|
      if @state.update(state_params)
        require 'json'
        hash = JSON.parse(File.read("public/eulma_lors_#{@state.id}.json"))
       # hash.update(hash) { |key, value| value == "Adrar" }

      # puts hash["features.properties.NÂ°_de_lot"] == "4"
      #  hash.features.properties._R_socia_français == "EURL SEKCERAM"
      #  hash.key({"_R_socia_français" => "EURL SEKCERAM"})

       # hash.each do |k,v|
        #  k == "properties._R_socia_français"
        #end

       # hash.select {|k,v| k == "geometry"}

        # hash[hash.keys.second].keys

        hash["properties"]["_R_socia_français"]  = @state.name
        File.open("public/eulma_lors_#{@state.id}.json","w") do |f|
          f.write(hash.to_json)
        end

        #hash.select {|k,v| k.select {|k,v| k == "_R_socia_français"} }
#hash.select{|key, value| value["_R_socia_français"] == "EURL SEKCERAM" }
=begin
        events_json = {
            "NÂ°_de_lot" => @state.name
        }
        events_json << events_json
        js_path = Rails.root.join('vendor', 'ZI_ANCIENNE', 'layers', 'ZI_ANCIENNE_0.js')
        File.open("js_path","w") do |f|
          f.write(events_json.to_json)
        end


        require 'rgeo'
        require 'json'
File.read("public/algeria_state_#{@state.id}.json")
        factory = RGeo::GeoJSON::EntityFactory.instance
        feature = (factory.feature @state.geom, @state.name)
        hash = RGeo::GeoJSON.encode feature
        File.open("public/algeria_state_#{@state.id}.json", 'w') {|file| file.write hash.to_json}

=end
        format.html { redirect_to @state, notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @state }
      else
        format.html { render :edit }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @state.destroy
    respond_to do |format|
      format.html { redirect_to states_url, notice: 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:name)
    end
end
