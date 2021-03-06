
# This is my Travis CI test project for Rails.

[![Build Status](https://travis-ci.org/macchiang/Rails_4_travis.svg?branch=master)](https://travis-ci.org/macchiang/Rails_4_travis)

# Ruby on Rails Tutorial: sample application

**This repository is not current or maintained. See [www.railstutorial.org/help](https://www.railstutorial.org/help) for the current version of the sample app.**

This is the sample application for
[*Ruby on Rails Tutorial: Learn Web Development with Rails*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/). You can use this reference implementation to help track down errors if you end up having trouble with code in the tutorial. In particular, as a first debugging check I suggest getting the test suite to pass on your local machine:

    cd /tmp
    git clone https://github.com/railstutorial/sample_app_rails_4.git
    cd sample_app_rails_4
    cp config/database.yml.example config/database.yml
    bundle install --without production
    bundle exec rake db:migrate
    bundle exec rake db:test:prepare
    bundle exec rspec spec/

If the tests don't pass, it means there may be something wrong with your system. If they do pass, then you can debug your code by comparing it with the reference implementation.

