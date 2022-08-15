# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

   #GET /resource/sign_in
   #def new
   # super
   #end

  # POST /resource/sign_in
   def create
     super
     count_hit = URI('https://api.countapi.xyz/hit/1ccb732e-b55a-4404-ad3f-0f99c02fe44e')
     Net::HTTP.get(count_hit)
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def after_sign_in_path_for(_resource)
    root_path
  end
end
