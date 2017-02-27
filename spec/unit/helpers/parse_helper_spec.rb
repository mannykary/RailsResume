require 'rails_helper'

RSpec.describe ParseHelper, type: :helper do
  
  describe '#load_yaml_file' do
    
    let(:rel_path) { 'foobar/path/to/yaml.yml' }

    it 'loads YAML file if it exists' do
      path = "#{Rails.root}#{rel_path}"
      yaml_as_hash = {
        'foobar_key' => 'foobar_value'
      }

      allow(File).to receive(:exists?).with(path).and_return(true)
      expect(YAML).to receive(:load_file).with(path).and_return(yaml_as_hash)
      expect(load_yaml_file(rel_path)).to eq(yaml_as_hash)
    end
  end

end