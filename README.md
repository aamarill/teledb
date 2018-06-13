# TeleDb :movie_camera:
A site to search and discover TV shows and learn more about them using a public [movie database](https://developers.themoviedb.org/3/getting-started)!

* https://teledb.herokuapp.com/

## How to navigate :ocean:
1. The home page shows you the most popular shows.
Visit the database's [popularity page](https://developers.themoviedb.org/3/getting-started/popularity) to learn more. The top right "popular shows" tab always navigates back to popular shows.

2. Use the search bar at the top to look up a specific show(s). The results will be sorted by popularity.

## Problem Description :mag:

Your task is to create a TV show discovery web app using the open-source Movie Database API.

### Functional Requirements
1. When first loaded, there should be a list of popular TV shows and a search bar.
2. Upon searching for a TV show in the search bar, the user should see a list of shows whose title matches the search.
3. After clicking on a TV show, the user should be taken to a page with more information about that particular TV show.

### Technical Requirements
1. Create a full-stack application with a backend that communicates with the movie API.
2. The front-end should be intuitive to use.
3. Accompany your code with a full test suite.
4. Deploy your site to a web host (e.g. on Amazon EC2, Heroku, Netlify, Google AppEngine, etc.).

## Technical choices :bulb:
This the my reasoning behind my technical choices. This include trade-offs I made, anything I left out, and what I may have done differently if I had more time to spend on the project.

### Architecture

* Chose Rails because it's the framework I am most comfortable with, but I do look forward to getting better at front-end frameworks as well. Since no internal database is needed at this point, a front-end framework may have been a good choice here.

* The architecture focus was build RESTful routes based on the API database structure.

* It was determined that having two controllers was necessary to maintain RESTful routes.

* Decided to not have any models since all of the data will be gathered using the movie database API. This means a large portion of the logic will be handled by helper modules with some assistance from controllers and views.

* Keep API key secret from public repo.

### Scalability
* Break up the API caller helper modules to be very flexible. For example, adding API requests for movies, should be straightforward.

* Use partials to display results, show views and page numbers.

* Create helper methods that can be used by multiple controllers.

## If I had more time :sweat_smile:

* Add continuous test integration ([Circle CI](https://circleci.com/)), a style checker ([Rubocop](https://github.com/rubocop-hq/rubocop)) and a test coverage checker ([Code Climate](https://codeclimate.com/)).

* Add more query options when searching and looking at popular shows.

* Create a view that is always displayed when a route doesn't exist.

* Improve the tests by creating test data up front and adding contexts.

* Add caching for configuration and any other data that doesn't change frequently on the API database.

* In show views, display the country and language more clearly.

## For Devs :computer:
Please see the [FORDEVELOPERS.md](FORDEVELOPERS.md) file.
