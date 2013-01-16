# Escalator [![Build Status on Travis CI](https://secure.travis-ci.org/hermannloose/escalator.png)](http://travis-ci.org/hermannloose/escalator)

## Installation

### Ruby Gems

````bash
$ bundle install
````

### Database

````bash
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
````

### Run the Server (development mode is default)

````bash
$ RAILS_ENV=development rails s
````

## Running the tests

### RSpec

Start [Spork](https://github.com/sporkrb/spork):

```bash
$ spork
```

Both `autotest` and `rspec spec` should pick up the `--drb` option in `.rspec`.

### Cucumber

```bash
$ rake cucumber
```

or

```bash
$ bundle exec cucumber
```

(Still unsure as to why just `cucumber` doesn't work fully.)
