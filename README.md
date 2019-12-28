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

```bash
$ curl -H 'Accept: application/vnd.marketplace.v1' http://api.market-place-api.test/users/1
{"id":1,"email":"example@marketplace.com","created_at":"2019-12-28T16:18:52.269Z","updated_at":"2019-12-28T16:18:52.269Z"}
```

