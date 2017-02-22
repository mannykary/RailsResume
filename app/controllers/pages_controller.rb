  class PagesController < ApplicationController
    include ParseHelper

    def show
      data = case params[:page]
        when 'resume'
          load_yaml_file('/config/data/resume.yml')
        else
          nil
        end

      if data.nil?
        render_error(404)
      else
        render json: data
      end
    end

  end  