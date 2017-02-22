module ParseHelper
  def load_yaml_file(rel_path)
    YAML.load_file("#{Rails.root}#{rel_path}")
  end
end