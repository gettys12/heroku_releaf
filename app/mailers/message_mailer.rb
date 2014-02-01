class MessageMailer < ActionMailer::Base

  default :from => 'katemary.murphy@gmail.com',
          :return_path => 'katemary.murphy@gmail.com'

  def send_email(email)
    @messagefrom = email.name
    @mailmessage = email.content
    @messagesubject = "Message from #{@messagefrom} #{email.email} "
    mail(:to => 'katemary.murphy@gmail.com', :from => email.email, :subject => @messagesubject ) do |format|
      format.html {render 'home/index.html.haml'}
    end
  end

  def welcome(user)
    @user = user
    mail(:to => user.email,
         :bcc => [""]) do |format|
      format.text
      format.html {render "signup_notification.text.plain.haml"}
    end
  end

  def reset(user)
    @user = user
    mail(:to => user.email,
         :bcc => [""]) do |format|
      format.text
      format.html {render "reset.text.plain.haml"}
    end
  end

end