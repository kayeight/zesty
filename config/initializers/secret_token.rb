# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Zesty::Application.config.secret_token = ENV['PRODUCTION_RAILS_KEY'] || '67c678414c5c2b2abb6d4f87def763af686927bf3ce583fa2c6f7644dbca16907aaca542c55fb7c39d0b46b71c803e49c8fef2a3ef0e994d20aa409cf201ce8b'
