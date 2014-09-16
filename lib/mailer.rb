require 'mailgun'
require '../config/secrets'

class Mailer < Secrets
  def initialize(email)
    Mailgun.configure do |config|
      config.api_key = @api
      config.domain  = @@domain
    end
    @mailgun = Mailgun(:api_key => @@mail_param[:key])
    @email = email
    send
  end

  def send
    parameters = {
    :to => @email,
    :subject => "Fizzd PDF - LEGIT, please open",
    :text => "Here's your pointless PDF. Enjoy!",
    :attachment => File.open("../export/Fizzd.pdf"),
    :from => "postmaster@#{@@domain}"
    }
    @mailgun.messages.send_email(parameters)
  end
end









