module ParseHelper
  def load_yaml_file(rel_path)
    path = "#{Rails.root}#{rel_path}"  
    File.exists?(path) ? YAML.load_file(path) : nil
  end
end