class UserMailer < ActionMailer::Base
  default from: "h.wight@galbraithwight.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://www.galbraithwight.com/sign-in'
  	mail(to: @user.email, subject 'Welcome to GalbraithWight')
  end

end
