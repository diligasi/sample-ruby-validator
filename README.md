# Sample Ruby Validator
This repository is for study and entertainment purposes only.

# Purpose
The main purpose of this program is to validate a given input while follows some calidation criterias.

# Dependencies
-   Ruby Version  `3.1.1`
-   Rspec Version  `~> 3.4`

# Installation

1.  Clone the project

    `$ git clone git@github.com:diligasi/sample-ruby-validator.git`

2.  Run bundler to install everything

    `$ bundle install`

3.  Run specs

    `$ rspec .`

4.  The specs should run without error and your go to go. 🙂

# Instructions For Use
After cloning the project, access its directory and type `bin/sample_ruby_validator YOUR-INPUT-STRING`, this command will validate the inserted string and return a message when it's valid, when not valid, an exception will be raised (`StringValidatorError`) and an `Array` listing the errors will be printed as shown bellow:

```shell
> bin/sample_ruby_validator 'Valid-string-1'
Valid-string-1 is valid!
>
>
> bin/sample_ruby_validator 'invalid-string'
==> Invalid string!
[
  "The input must include an uppercase character.",
  "The string must include a number."
]
~/sample-ruby-validator/lib/validate/string.rb:14:in `validate': StringValidatorError (StringValidatorError)
       from ~/sample-ruby-validator/lib/validate.rb:6:in `string'
       from bin/sample_ruby_validator:7:in '<main>'
>
``` 
