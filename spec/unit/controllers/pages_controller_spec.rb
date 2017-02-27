require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  
  describe '#show' do

    let(:page_data) do
      {
        name: 'Foobar',
        skills: ['Ruby on Rails', 'JavaScript', 'AngularJS']
      }
    end

    it 'loads correct yml file for resume page' do
      expect_any_instance_of(ParseHelper).to receive(:load_yaml_file).with('/config/data/resume.yml').and_return(page_data)
      get :show, params: { page: 'resume' }
      expect(response).to be_successful
      expect(response.body).to eq(page_data.to_json)
    end

    it 'renders 404 error if load_yaml_file method returns nil' do
      expect_any_instance_of(ParseHelper).to receive(:load_yaml_file).with('/config/data/foobar.yml').and_return(nil)
      get :show, params: { page: 'foobar' }
      expect(response.status).to eq(404)
    end

  end
end