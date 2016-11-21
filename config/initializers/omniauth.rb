OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "704828876082-b463nsmo0uontb2vg0pvmglbn5isv8ak.apps.googleusercontent.com"
, "PxG7-5gDjJILQKLOcTdIMAih", {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end