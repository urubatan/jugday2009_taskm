# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_exemplo_session',
  :secret      => '32d5024b4b860d3f1d2f6c954c7c2c4149a9d9b574640494f2228bb02021cddaaa8f4845232428ce511eecf023f2c0ebb88efcfe76617bce0095f43fdbd2dcd0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
