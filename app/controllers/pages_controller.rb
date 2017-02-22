  class PagesController < ApplicationController
    include ParseHelper

    def show
      if (data = get_page_data(params[:page]))
        render json: data
      else
        render_error(404)
      end
    end

    private

    def get_page_data(page)
      load_yaml_file("/config/data/#{page}.yml")
    end

  end  