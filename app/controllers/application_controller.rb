class ApplicationController < ActionController::Base
    before_action :set_search
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

    def set_search
      @q = Festival.search(params[:q])
      @searched_festivals = @q.result(distinct: true)
    end
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :adress])
    end
    def after_sign_in_path_for(resource)
  		festivals_path
	  end

	  def after_sign_out_path_for(resource)
  		root_path
	  end

    
    

end
