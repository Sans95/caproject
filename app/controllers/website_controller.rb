class WebsiteController < ApplicationController
  layout 'website'
  #skip_before_filter :authenticate_user!
  
  def dashboard
  end
end
