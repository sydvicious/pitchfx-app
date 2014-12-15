pitchfx-app
===========

Requirements

This app requires ruby 2.5.1, pip, and rvm. Documentation for installation
is available on the Web.

Setup instructions

1. Clone this repo.
2. Copy commandfx_2014.csv into the pitchfx-app folder.

Then, run the following:

cd pitchfx-app
rvm use ruby-2.1.5@pitchfx-app --create --ruby-version
bundle install
rake db:migrate
rake db:seed
rails s


