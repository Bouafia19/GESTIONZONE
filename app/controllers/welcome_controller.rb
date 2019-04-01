class WelcomeController < ApplicationController
  def index
    @zoneact = ZoneActivite.all.count
    @zoneind = ZoneIndustrielle.all.count
    @horszone = HorsZone.all.count
    @promotionimob = PromotionImmobiliere.all.count
    @user = User.all.count
    @zone = Zone.all.count
    @investisseurs = Investisseur.all
  end

  def carte

  end
end
