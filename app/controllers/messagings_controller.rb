class MessagingsController < ApplicationController
  def index
    render :json => create_json
  end

  private

  def create_json
    Tropo::Generator.message "Test message from Tropo!", {
      :to => "+972542280512",
      :callerId => "972543060872",
      :network => "SMS",
      :timeout => 10      
    }
  end
end
