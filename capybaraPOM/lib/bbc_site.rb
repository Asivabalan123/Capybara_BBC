require_relative 'pages/homepage'
require_relative 'pages/bbc_sign_up'

class BbcSite

  def bbc_homepage
    Homepage.new
  end

  def bbc_signup
    Confirmation.new
  end

end
