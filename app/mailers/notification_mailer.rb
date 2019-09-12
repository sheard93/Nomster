class NotificationMailer < ApplicationMailer
   default form: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "shelbyzaglin@yahoo.com",
      subject: "A comment has been added to your place")
  end  
end
