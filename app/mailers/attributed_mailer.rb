class AttributedMailer < ApplicationMailer
	default from: 'slatejob.official@gmail.com'
 
  def attributed_email(user_id, bid_user_id, project_id)
    @bid_user = User.find(bid_user_id)
    @user = User.find(user_id)
    @project = Project.find(project_id)
    
    @url  = "http://slatejob.com"
    #email_with_name = %("Hello" <"imofy.official@gmail.com">)
    #mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: @user.email, subject: "Attribution de projet")
  end
end
