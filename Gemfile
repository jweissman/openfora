source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# ?
gem 'i18n', '0.6.0'

#
# => common gems for both testing and development environments
# 
group :test, :development do
  
  #
  # 	testing frameworks
  #

  gem 'capybara'
  gem 'factory_girl_rails'
  gem "rspec-rails", "~> 2.0"
  gem 'cucumber-rails', :require => false  

  #
  # => helpers
  #

  gem 'database_cleaner'


  #
	# => support
	#

  gem 'growl'
  gem 'spork'
  
  gem 'powder'

  #
  #   guard
  #
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'rack-livereload'

end

#
# Gems used only for assets and not required
# in production environments by default.
#
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'twitter-bootstrap-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

#
#   global requirements
#

# tree
gem 'acts_as_tree'


# js
gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
gem 'ruby-debug19', :require => 'ruby-debug'
