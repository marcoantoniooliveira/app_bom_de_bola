# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( users.css )
Rails.application.config.assets.precompile += %w( users.js )

Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( login.js )

Rails.application.config.assets.precompile += %w( teams.css )
Rails.application.config.assets.precompile += %w( teams.js )

Rails.application.config.assets.precompile += %w( players.css )
Rails.application.config.assets.precompile += %w( players.js )

Rails.application.config.assets.precompile += %w( matches.css )
Rails.application.config.assets.precompile += %w( matches.js )

Rails.application.config.assets.precompile += %w( fields.css )
Rails.application.config.assets.precompile += %w( fields.js )

