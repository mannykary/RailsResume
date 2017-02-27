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
      data = load_yaml_file("/config/data/#{page}.yml")
      add_resume_asset_paths(data) if data && page == 'resume'
      data
    end

    def add_resume_asset_paths(data)
      data['education'].each do |school|
        school['asset_path'] = ActionController::Base.helpers.asset_path(school['image_path'])
      end

      data['profile_asset_path'] = ActionController::Base.helpers.asset_path(data['profile_path'])
    end

  end
