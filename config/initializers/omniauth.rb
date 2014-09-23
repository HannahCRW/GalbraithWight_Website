Rails.application.config.middleware.use OmniAuth::Builder do
	provider :linkedin, ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET'], :scope => 'r_fullprofile r_emailaddress', :fields => ['id', 'email-address', 'first-name', 'last-name', 'location', 'picture-url', 'public-profile-url']
end
