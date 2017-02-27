class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_error(error_code)
    render file: "#{Rails.root}/public/#{error_code}.html", status: error_code
  end

end
