class StaticPagesController < ApplicationController
  def home
    expires_in 60.minutes, :public => true
    @referrals = referral_sources

    @contact = Contact.new(contact_params)
  end

  def referral_sources
    ["Friend", "Home Advisor", "Website", "Social Media", "Facebook"]
  end

  private
  
  def contact_params
    params.permit(:first_name, :last_name, :email, :phone_number, :description, :referral)
  end
end
