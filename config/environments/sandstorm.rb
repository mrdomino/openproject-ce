require Rails.root.join("config/environments/production")

OpenProject::Application.configure do
  config.serve_static_files = true
  config.assets.configure do |env|
    env.cache = ActiveSupport::Cache::FileStore.new("read-only-cache/assets")
  end
end
