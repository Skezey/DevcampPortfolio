module SetSource
  extend ActiveSupport::Concern
  #get source of page visit

  included do
    before_action :set_source
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end

end
