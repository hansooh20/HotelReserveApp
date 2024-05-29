Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:5173' # Vue.jsを動作させているアドレスとポート番号

    resource '*',
      headers: :any,
      expose: %w[access_token uid client],
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end