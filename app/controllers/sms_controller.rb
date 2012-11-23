class SmsController < ApplicationController

  def sms_send
    
    account_sid = ACCOUNT_SID
    auth_token = AUTH_TOKEN
    
    logger.info "acct sid = #{account_sid}"
    logger.info "token = #{auth_token}"
    
    client = Twilio::REST::Client.new account_sid, auth_token
    my_phone_no = "+17542272668" # Your Twilio number

    user = User.find_by_id(params[:user_id])
    name = user.name
    phone_no = user.phone_no

    client.account.sms.messages.create(
        :from => my_phone_no,
        :to => phone_no,
        :body => "Hey #{name}, your load is done.\nThanks for using LaundryAlert."
    ) 
    
    redirect_to users_path, notice: "Message sent to #{name} successfully."    
  end
  
  
end
