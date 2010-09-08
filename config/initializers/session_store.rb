# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_inapicklecateringllc_session',
  :secret      => 'f10690f5e566cb51ece3b7ddb3eed8df927e4bb83f41c762b44a9df7bb90fc1806a9f2dbcb58d2ed32882fbe9a759b907c14691ef415d11b15c7ac9c60b7681b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
