class VerifyMailer < ApplicationMailer
	default from: "noreply@salty-garden-19115.herokuapp.com"

	def send_mail( receiver, sid )
		@user = receiver
		@sid = sid
		mail(to: @user.email, subject: 'Verify link')
	end
end
