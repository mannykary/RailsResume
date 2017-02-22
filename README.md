# README

## Requirements
These aren't strict requirements, but the setup instructions are based on this. You can adapt these instructions for a different OS or different versions of Ruby and Rails.

* Mac OS X
* Ruby 2.4.0
* Rails 5
* Homebrew
* RVM

## Inital Setup
1. Follow the instructions at [http://railsapps.github.io/installrubyonrails-mac.html](http://railsapps.github.io/installrubyonrails-mac.html) to set up Homebrew, RVM, Ruby, and Rails.

2. Create new app directory and create a gemset for it:
	```
	$ mkdir myapp
	$ cd myapp
	$ rvm use ruby-2.4.0@myapp --ruby-version --create
	$ gem install rails
	```

3.  Install and setup Postgres:
	```
	$ brew install postgresql
	$ brew services start postgresql
	$ createdb
	$ psql
	psql (9.6.2, server 9.5.1)
	Type "help" for help.
	
	manny=# create role myapp with createdb login password 'password1';
	CREATE ROLE
	manny=# \q
	```

4. Create new Rails app (cd to the app directory):
	`rails new . --database=postgresql`
	
5. Run rake task to create databases:
	`rake db:setup`

6. Set up Figaro gem. Add `gem 'figaro'` to `Gemfile`, and then run `bundle install`. Then run `bundle exec figaro install`. Move all secrets from `config/secrets.yml` to `config/application.yml`

7. Start server using `rails s`. Then navigate to `http://localhost:3000`. The Rails app should load successfully.

Now would be a good time to make an initial commit of the barebones app.