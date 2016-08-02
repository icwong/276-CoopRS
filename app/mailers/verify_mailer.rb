class VerifyMailer < ApplicationMailer
	default from: "noreply@shielded-springs-63464.herokuapp.com"

	def send_mail( receiver, sid )
		@user = receiver
		@sid = sid
		mail(to: @user.email, subject: 'Verify link')
	end
end
