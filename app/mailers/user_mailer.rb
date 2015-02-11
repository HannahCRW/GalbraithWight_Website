class UserMailer < ActionMailer::Base
  default from: "h.wight@galbraithwight.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://www.galbraithwight.com/sign-in'
  	mail(to: @user.email, subject 'Welcome to GalbraithWight')
  end

  def news_email(user)
  	@user = user
  	@url = 'http://www.galbraithwight.com/articles/index'
  	mail(to: @user.email, subject 'GalbraithWight Newsletter #{Date}')
  	#include something like 3 most recent articles, plus read mores
  end

end
