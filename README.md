# awesome_back_url

[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)

Redirect to proper back URL for your Rails applications. In case if you want to redirect user not to "edit" or "new" page from "show" after creation, but to "index" or other specific URL.

## Usage

Options:

```ruby
awesome_back_path(path = request.referrer, only: nil, except: nil, fallback: :back)
```

* "path" - destination to redirect user
* "only" -  regexp of allowed paths
* "except" - regexp of disallowed paths
* "fallback" - if path is incorrect (not allowed or not in allowed) redirect to this url.

Samples:


```ruby
link_to 'Back', awesome_back_path(except: /\/new|\/edit/, fallback: users_path) # returns '/users'
link_to 'Back', awesome_back_path('/path', except: /\/new/, fallback: '/users') # returns  '/path'
link_to 'Back', awesome_back_path('/path/new', except: /\/new|\/edit/, fallback: '/users') # returns '/users'
link_to 'Back', awesome_back_path('/path/edit', except: /\/new|\/edit/, fallback: '/users') # returns '/users'
link_to 'Back', awesome_back_path('/path', only: /\/new|\/edit/, fallback: '/users') # returns '/users'
link_to 'Back', awesome_back_url('/path', fallback: '/users') # returns '/path'    
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'awesome_back_url'
```

And then execute:
```bash
$ bundle
```

## Contributing

You are welcome to contribute.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/)
