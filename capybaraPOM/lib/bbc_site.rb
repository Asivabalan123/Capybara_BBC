require_relative 'pages/homepage'
require_relative 'pages/confirmation'

class BBCSite

  def bbc_homepage
    Homepage.new
  end

  def bbc_confirmation
    Confirmation.new
  end

end
