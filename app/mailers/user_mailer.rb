class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Investissement a Wilaya De Setif')
  end

  def alert_email(user,investisseur)
    @user = user
    @investisseur = investisseur

    mail(to: @user.email, subject: 'Un Investisseur a etait mise a jour')
  end
end
