class ExtensionsController < InheritedResources::Base

  private

    def extension_params
      params.require(:extension).permit(:n_de_lot, :n_dossier, :r_socia_ar, :r_socia_fr, :geom)
    end
end

