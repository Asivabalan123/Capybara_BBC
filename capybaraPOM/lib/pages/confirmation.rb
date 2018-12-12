require 'Capybara/dsl'

class Confirmation


  include Capybara::DSL

  attr_accessor :error_no_match, :invalid_email, :invalid_password

  def initialize
    @invalid_password = "Uh oh, that password doesn\u2019t match that account. Please try again."
    @invalid_email = "Sorry, we can’t find an account with that email. You can register for a new account or get help here."
  end

  USERNAME_ID = 'user-identifier-input'
  USERNAME_ERROR_ELEMENT = '#form-message-username'
  USERNAME_CLASS = ".form-message form-message--error form-message--username field__error"
  PASSWORD_ID = 'password-input'
  PASSWORD = '#form-message-password'
  SUBMIT_BUTTON = '#submit-button'


  def current_url
    page.current_url
  end

  def fill_in_username_field(text)
    fill_in(USERNAME_ID, :with => text)
  end

  def check_user_name_field
    find_field(USERNAME_ID).value
  end

  def fill_in_password(text)
    fill_in(PASSWORD_ID, :with => text)
  end

  def check_password_field
    find_field(PASSWORD_ID).value
  end

  def click_sign_in
    find(SUBMIT_BUTTON).click
  end

  def get_error_message_password
    find(PASSWORD).text
  end

  def get_error_message_username
    find(USERNAME_ERROR_ELEMENT).text
  end


end
