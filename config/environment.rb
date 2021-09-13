# Load the Rails application.
require_relative "application"

env = File.join(Rails.root, 'config', 'initializers', 'env.rb')
load(env) if File.exists?(env)


# Initialize the Rails application.
Rails.application.initialize!

