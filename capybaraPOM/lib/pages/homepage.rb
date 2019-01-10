require 'capybara/dsl'

class Homepage
  include Capybara::DSL

HOMEPAGE_URL = 'https://www.bbc.co.uk/'
SUBMIT_ID = '#idcta-username'


  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def sign_in
    find(SUBMIT_ID).click
  end


end
