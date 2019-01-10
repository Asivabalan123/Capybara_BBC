describe 'testing bbc home page' do

  context 'it should show correct error messages' do

    it "should return error message for invalid username with a valid password" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.sign_in
      @bbc_site.bbc_signup.fill_in_username_field('abc123gurney@hotmail.co.uk')
      @bbc_site.bbc_signup.fill_in_password('Jill6jai506')
      @bbc_site.bbc_signup.click_sign_in
      expect(@bbc_site.bbc_signup.get_error_message_username).to eq (@bbc_site.bbc_signup.invalid_email)


    end

    it "should return error message for invalid password with a valid email" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.sign_in
      @bbc_site.bbc_signup.fill_in_username_field("ruby@hotmail.co.uk")
      @bbc_site.bbc_signup.fill_in_password('happykid123')
      @bbc_site.bbc_signup.click_sign_in
      expect(@bbc_site.bbc_signup.get_error_message_password).to eq (@bbc_site.bbc_signup.invalid_password)
    end
  end
end
