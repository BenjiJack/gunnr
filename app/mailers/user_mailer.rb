class UserMailer < ApplicationMailer
	default from: 'hello@gunnr.co'
	 
	  def welcome_email(user)
	    @user = user
	    @url = "http://gunnr.co"
	    mail(to: @user.email, subject: 'Welcome to Gunnr')
  	end	
end
