describe 'testing bbc home page' do

  context 'it should show correct error messages' do


  #   it "should fill in the form correctly" do
  #
  # @bbc_site = BBCSite.new
  # @bbc_site.bbc_homepage.visit_home_page
  # @bbc_site.bbc_homepage.sign_in
  # expect(@bbc_site.bbc_confirmation.current_url).to eq 'https://account.bbc.com/signin'
  #
  # @bbc_site.bbc_confirmation.fill_in_password('')
  # @bbc_site.bbc_confirmation.click_sign_in
  # expect(@bbc_site.bbc_confirmation.get_error_message_password).to eq "Something's missing. Please check and try again."
  #
  # sleep 3
  #
  # @bbc_site.bbc_homepage.visit_home_page
  # @bbc_site.bbc_homepage.sign_in
  # @bbc_site.bbc_confirmation.fill_in_password('Abi')
  # @bbc_site.bbc_confirmation.click_sign_in
  # sleep 3
  # expect(@bbc_site.bbc_confirmation.get_error_message_password).to eq "Sorry, that password is too short. It needs to be eight characters or more."
  #
  # @bbc_site.bbc_homepage.visit_home_page
  # @bbc_site.bbc_homepage.sign_in
  # @bbc_site.bbc_confirmation.fill_in_username_field('Abi')
  # @bbc_site.bbc_confirmation.click_sign_in
  # sleep 3
  # # expect(@bbc_site.bbc_confirmation.get_error_message_username).to eq "Sorry, those details don't match. Check you've typed them correctly."
  # expect(@bbc_site.bbc_confirmation.get_error_message_password).to eq "Something's missing. Please check and try again."

  it "should return invalid username with a valid password" do
    @bbc_site = BBCSite.new
    @bbc_site.bbc_homepage.visit_home_page
    @bbc_site.bbc_homepage.sign_in
    @bbc_site.bbc_confirmation.fill_in_username_field('abc123gurney@hotmail.co.uk')
    @bbc_site.bbc_confirmation.fill_in_password('Jill6jai506')
    @bbc_site.bbc_confirmation.click_sign_in
    expect(@bbc_site.bbc_confirmation.get_error_message_username).to eq (@bbc_site.bbc_confirmation.invalid_email)


  end

  it "should return invalid password with a valid email" do
    @bbc_site = BBCSite.new
    @bbc_site.bbc_homepage.visit_home_page
    @bbc_site.bbc_homepage.sign_in
    @bbc_site.bbc_confirmation.fill_in_username_field("james@hotmail.co.uk")
    @bbc_site.bbc_confirmation.fill_in_password('happykid123')
    @bbc_site.bbc_confirmation.click_sign_in
    expect(@bbc_site.bbc_confirmation.get_error_message_password).to eq (@bbc_site.bbc_confirmation.invalid_password)
end







end
end
