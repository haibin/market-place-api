# market-place-api

```bash
$ rails new . --skip-test --api
```

Update gems.

```bash
$ bundle install
$ rails generate rspec:install
$ bundle exec rspec lib/spec/api_constraints_spec.rb
$ rails g devise:install
$ rails g devise User
$ rails db:migrate
$ rails db:test:prepare
$ bundle exec rspec spec/models/user_spec.rb
$ rails generate controller users
$ rspec spec/controllers
```

