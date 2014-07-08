if defined?(ChefSpec)
  def create_gunicorn_config(config_path)
    ChefSpec::Matchers::ResourceMatcher.new(:gunicorn_config, :create, config_path)
  end

  def delete_gunicorn_config(config_path)
    ChefSpec::Matchers::ResourceMatcher.new(:gunicorn_config, :delete, config_path)
  end

  def install_gunicorn(virtualenv)
    ChefSpec::Matchers::ResourceMatcher.new(:gunicorn_install, :install, virtualenv)
  end
end
