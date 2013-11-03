class EmailMailer < ActionMailer::Base
  default from: 'book_site@bestbook.com'

  def subscribe(user_email)
    @user_email = user_email
    mail(to: "jasminaata@gmail.com", subject: "New subscriber")
  end
end