# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


This PR introduces a basic view page. The following changes have been made:

Controller Generation:

Generated a new PostsController.
Route Definition:

Added a new route (GET /posts) in config/routes.rb to map requests to the index action of PostsController.
Controller Action:

Implemented the index action in PostsController to fetch all posts from the database and make them available to the view.
View Creation:

Created an index.html.erb file under app/views/posts/.
Testing:

Started the Rails server and navigated to http://localhost:3000/posts to ensure the view page renders correctly.
Please review these changes and let me know if there are any improvements or adjustments needed. Thank you for considering this PR!
