# Preview all emails at http://localhost:3000/rails/mailers/user_mailer

class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("monica.nickolai@gmail.com", "The Daejeon Arts Collective", "Hello World!")
  end
end