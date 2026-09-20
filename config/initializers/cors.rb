# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # http://localhost:5173 - React dev server (docker-compose.yml)
    # http://localhost:8080 - production frontend build (docker-compose.prod.yml)
    # FRONTEND_ORIGINS - comma-separated list of additional origins to allow,
    #   e.g. your real deployed frontend URL, set at container runtime.
    default_origins = ["http://localhost:5173", "http://localhost:8080"]
    extra_origins = ENV.fetch("FRONTEND_ORIGINS", "").split(",").map(&:strip).reject(&:empty?)
    origins(*(default_origins + extra_origins))

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
