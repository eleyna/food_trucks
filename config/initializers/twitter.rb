
  # This line loads the configuration from the .env file into the ENV hash
  # ENV values are accessible like ENV['CONSUMER_KEY']
  Dotenv.load

  # This block is where we're setting up our Twitter authentication
  Twitter.configure do |config|
    config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    config.oauth_token = ENV['TWITTER_OAUTH_TOKEN']
    config.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
  end
