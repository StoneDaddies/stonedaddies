class StaticPagesController < ApplicationController
  def home
    expires_in 60.minutes, :public => true
    @referrals = referral_sources
  end

  def referral_sources
    ["Friend", "Home Advisor", "Website", "Social Media", "Facebook"]
  end
end
