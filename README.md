### alpha stage of app
### Ruby Version
*Ruby 2.5.1p57
###Rails Version
*Rails 5.2.2

### System dependencies
*nodejs
*sqlite3

### Configuration
*bundle install

### Database creation
*rake db:setup
*rake db:migrate
*rake db:seed
*bundle exec rake import:airlines
*bundle exec rake import:airports
*bundle exec rake import:flights


### Deployment instructions
*rails s
Ran out of time to change to postgres so couldnt deploy on Heroku
