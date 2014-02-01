class MessagesController < ActionController::Base
  layout 'application'
  def new
    @message = Message.new({:name=>params[:name], :email => params[:email], :content => params[:content]})
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      begin
        MessageMailer.send_email(@message).deliver


      end
    else
      redirect_to root_url
    end
  end

end

