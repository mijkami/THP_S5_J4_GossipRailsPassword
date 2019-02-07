# the gossip project (thp, week 5, day 1)

### how to use

1. git clone the repository to your computer
2. run the `bundle install` command
3. run the `rails db:create` command
4. run the `rails db:migrate` command
5. run the `rails db:seed` command
6. Now you can run the `rails server`
7. Go on your web browser and type `localhost:3000`
8. Have fun on the Gossip Project
9. You can also check the `localhost:3000/welcome/your_name` to see a customised welcome page

### database

This app is composed of seven tables : `users`, `cities`, `gossips`, `tags`, `tag_gossip_joins`, `private_messages`, and `comments`


### rspec

to run rspec, just type `rspec` in the terminal

we made tests on all models, everything should work 