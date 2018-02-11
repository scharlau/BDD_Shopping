# README for the BDD Shopping Exercise #

This is a 'deliberate practice' exercise for working with Rails. As before, the goal here is to have an example that lets us better understand one part of a Rails application, and not to have a perfect example. To that end this shopping example is purely for exploring behaviour driven devlopment (BDD).

This example is a simplified and modified version of a messy solution to Shopping Example at https://github.com/scharlau/Shopping_Exercise which is built upon from the 'Depot' example found in "Agile Web Development with Rails" from Pragmatic Programmers (https://pragprog.com/book/rails5/agile-web-development-with-rails-5) We're using this example, because it lets us quickly get to the BDD parts that we want to explore. This example also uses the Faker Gem from https://github.com/stympy/faker to generate sample data for the application.

## Setting Up the Exercises ##

Pull the Git repository via download, or by cloning to your computer. Run

    bundle install

To get all of the gems sorted. You might have issues with the FFI gem. On a Mac I resolved these with Homebrew, which was used to install Rails. Use

    brew install libffi
    brew install automake

Now you should be able to run

    gem install ffi

Then bundle install should complete.

Now run the migrations with either rails or rake command depending upon your platform.

    rails db:migrate

This will set up your database, and now you can run the seed_tables script to populate your database with the command:

    bin/rake products:seed_tables

This will generate data using the Faker gem that we can use in the exercises.
After you start the rails server you can now see the following items in the application:
* localhost:3000/customers
* localhost:3000/products
* localhost:3000/line_items
* localhost:3000/orders

When you start at localhost:3000 you're taken to orders/index which has a dashboard showing total orders by customers. (This still needs some rework, but that's for later. For now we just want a BDD example to use.)

## Do the Work ##

Work through the three rounds with a partner, or on your own, depending upon your circumstances. Each round should be twelve minutes, followed by a discussion of where you are and what has been working, as well as, what you're working on next.

You may want to refer to the shopping/db/schema.rb file to better understand the database schema before you get started. Some of you might even want to diagram the schema.

1. Round one should be fixing the line_item and order pages to show names of items and customers.
2. Round two should be creating a 'dashboard' page to show total orders ranked by customers.
3. Round three is making round two work when you scale up the database by changing the numbers in the seed_tables files to work with 50 customers and orders of 10 items per customer, or by setting it up so that you also have customers, who have no orders.
