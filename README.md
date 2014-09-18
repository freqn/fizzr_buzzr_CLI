fizzr_buzzr_CLI
===============

**Description**

FizzBuzz overkill in the making

Dependencies
===============

* RSpec
* Prawn
* Mailgun

Configuration
===============

In the root project directory:

1. `mkdir export config`
2. `touch config/secrets.rb`
3. In `secrets.rb` add the following:

```ruby
class Secrets
  @@domain = 'your Mailgun domain'
  @@mail_param = {key: 'your Mailgun API key'}
end
```

Usage
===============

1. After cloning the repo, run *fizzed_cli.rb* - located in the app folder.
2. Follow the on-screen instructions for the rest.
3. Check the export folder for your \'hot-off-the-press\' PDF.
4. Print it out & smell the paper. (Mandatory)

Bugs?
===============

Please raise an issue.
