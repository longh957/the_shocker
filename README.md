# The Shocker

A collection of Pry add-ons for Rails, based on Spirit Fingers with updated dependencies.

| Add On  | Description
----------| -----------
[**pry**](https://github.com/pry/pry) | Pry is a powerful alternative to the standard IRB shell for Ruby.
[**pry-doc**](https://github.com/pry/pry-doc) | Provides extended documentation support for Pry.
[**pry-rails**](https://github.com/rweng/pry-rails) | This is a small gem which causes rails console to open pry.
[**pry-stack_explorer**](https://github.com/pry/pry-stack_explorer) | Enables the user to navigate the call-stack.
[**pry-byebug**](https://github.com/deivid-rodriguez/pry-byebug) | Adds step, next, finish and continue commands and breakpoints to Pry using byebug.
[**pry-coolline**](https://github.com/pry/pry-coolline) | The pry-coolline plugin provides live syntax highlighting for the Pry REPL for Ruby 1.9.2+ (MRI).
[**pry-rescue**](https://github.com/ConradIrwin/pry-rescue) | Pry-rescue is an implementation of "break on unhandled exception" for Ruby. Whenever an exception is raised, but not rescued, pry-rescue will automatically open Pry for you:
[**pry-clipboard**](https://github.com/hotchpotch/pry-clipboard) | Copy history/result to clipboard.
[**hirb**](https://github.com/cldwalker/hirb) | Given an object or array of objects, hirb renders a view based on the object's class and/or ancestry.
[**awesome_print**](https://github.com/michaeldv/awesome_print) | Awesome Print is a Ruby library that pretty prints Ruby objects in full color exposing their internal structure with proper indentation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'the_shocker', :group => :development
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install the_shocker

## Useful ~/.pryc Config
Adding the following to your ~/.pryc will set some nice default configurations for the plugin:

```ruby
# pry-clipboard configuration
begin
  require 'pry-clipboard'
  # aliases
  Pry.config.commands.alias_command 'ch', 'copy-history'
  Pry.config.commands.alias_command 'cr', 'copy-result'
rescue LoadError => e
  warn "can't load pry-clipboard"
end

# awesome_print configuration
begin
  require "awesome_print"
  # User awesome print by default
  AwesomePrint.pry!
  AwesomePrint.defaults = { indent: -2 }
rescue LoadError => e
  warn "can't load awesome_print"
end

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Hit Enter to repeat last command
Pry::Commands.command /^$/, "repeat last command" do
_pry_.run_command Pry.history.to_a.last
end

```

## Contributing

1. Fork it (https://github.com/longh957/the_shocker)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
