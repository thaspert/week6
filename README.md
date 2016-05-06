# Week 6

To run this Rails app on your laptop:

1. Clone this repository
1. bundle install
1. rake db:migrate
1. rake db:seed
1. rails server

At this point, you should be able to browse to `http://localhost:3000` and you should see a list of awesome movies.  

*NOTE: On some systems, you may need to prefix steps 3 and 4 with 'bundle exec' i.e. 'bundle exec rake db:migrate'.*


The theme of tonight's class is *HTTP is a stateless protocol*.

There are a few Rails goodies in this code for you to discover and play
around with this week.  If, after hacking on the code for a few days, there are still parts of the code that feel mysterious, reach out on Piazza so we can all discuss it!

## Cookies

The Rails Guides have a small section on browser cookie management in Rails: http://guides.rubyonrails.org/action_controller_overview.html#cookies

For what it's worth, don't worry too much about the `cookies` hash that we're using tonight.  We will be replacing it with the `session` hash for security reasons very soon.  The main value of the `cookies` hash is to help us understand how browser cookies works, and to understand the motiviation for an abstracted security layer on top of it.
