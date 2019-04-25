class AnciennesController < InheritedResources::Base

  private

    def ancienne_params
      params.require(:ancienne).permit(:n_de_lot, :n_dossier, :r_socia_ar, :r_socia_fr, :geom)
    end
end

