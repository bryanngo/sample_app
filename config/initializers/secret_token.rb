# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
  	# Use the existing token
  	File.read(token_file).chomp
  else
  	# Generate a new token and store it in the token_file.
  	token = SecureRandom.hex(64)
  	File.write(token_file, token)
  	token
  end
end

#SampleApp::Application.config.secret_key_base = '1bc49d3ea12d29f6b67a3d7ae85d913f473a5080365fae2da93708a6e0286144adac068a4c3da17d74c944935fe51df3f54cd79ffaf506fe83308c4b542e558d'
SampleApp::Application.config.secret_key_base =  secure_token
