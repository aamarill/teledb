!add emojis!

# TeleDb :movie_camera:
A site to look up and discover TV shows and learn more about them!

* !!Add heroku url here!!

## How to navigate and use
The home page shows you the current top 20 shows.

## Problem Description

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

## Technical choices
This is my reasoning behind my technical choices. This include trade-offs I made, anything I left out, and what I may have done differently if I had more time to spend on the project.

### Architecture

* Chose Rails because it's the framework I am most comfortable with and I wanted to explore adding javascript to its views. A front-end framework like (AngularJS) would have been a good choice here, but then I would struggle to add Users for example. I am more experienced in adding features and a database to a Rails app than to an AngularJS app.

* Decided to not have any models since all of the data will be gathered using the movie database API.

* If I had more time, I would like to add a front-end framework like Angular or React to the Rails app.


## For Devs
Please see the [FORDEVELOPERS.md](FORDEVELOPERS.md) file.
