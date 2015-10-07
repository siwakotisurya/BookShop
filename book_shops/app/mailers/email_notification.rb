class EmailNotification < ApplicationMailer
	default from: 'railsmailer724@gmail.com'
	def notify(user)
	    @user = user
	    mail(:to => @user.email_address, :subject => "Registered")
	end
end
