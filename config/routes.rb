SendSms::Application.routes.draw do
  resources :users
  
  match "/send_sms/:user_id" => "sms#sms_send", :as => :send_sms
end
