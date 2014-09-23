Rails.application.config.middleware.use OmniAuth::Builder do
	provider :linkedin, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end