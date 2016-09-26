class StaticPagesController < ApplicationController
  def home
    expires_in 60.minutes, :public => true
  end
end
