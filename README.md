![Title](/app/assets/images/title.jpg "Adopt Don't Shop")
## Table of contents
* [General info](#general-info)
* [Link](#link)
* [Database Schema](#database-schema)
* [Learning Goals/Areas of Focus](#learning-goals)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Contact](#contact)

## General info
This project is a simple Pet Adoption Platform built from an existing code base.
Users are able to search, view, and apply to adopt pets.

Admins will be able to approve or reject applications and see statistics for the
Shelters, Pets, and Applications in the system.


## Link
### https://adopt-dont-shop-1118.herokuapp.com/

For the ADMIN side of the site visit:
### https://adopt-dont-shop-1118.herokuapp.com/admin/shelters
Pending application functionality for admin is _IN PROGRESS_

## Database Schema
![Diagram](/app/assets/images/database_diagram.jpg "Database Diagram")

### Provided database design
![visual-schema.png](https://i.postimg.cc/0ywZgQ1W/visual-schema.png)

## Learning Goals / Areas of Focus
* Build out CRUD functionality for a many-to-many relationship
* Use ActiveRecord to write queries that join multiple tables of data together
* Use MVC to organize code effectively, limiting the amount of logic included in
  views and controllers
* Validate models and handle sad paths for invalid data input
* Use flash messages to give feedback to the user
* Use partials in views
* Use `within` blocks in tests
* Track user stories using GitHub Projects
* Deploy an application to Heroku
* Build off of an existing codebase
* Basic styling with CSS and production images using Rails' asset pipeline


## Technologies
Project is created with:
* Ruby version 2.5.3
* Rails version 5.2.4.3
* PostgeSQL


## Features
List of features ready and TODOs for future development
* Application deployed to Heroku
* Multi-step application process with feedback to user if information entered
  incorrectly
* Partial, case match search for pets
* Buttons to add pets to application and to submit update application status
* Application statement and submit do not appear until pet(s) added to
  application
* SQL and ActiveRecord logic behind the scenes to sort and filter data
* Admin shelter page that lists shelters with pending applications
* Mastered Rails' asset pipline to correctly display images in production

To-do list:
* SQL to ActiveRecord refactor of some queries
* Accept/Reject pet functionality to Admin
* Accept/Reject actions change status of entire application and adoptable status
  of pet
* Additional SQL and ActiveRecord methods to alter data display


## Status
Project is: _in progress_


## Contact
Created by
  #### Joe Mecha [GitHub](https://github.com/joemecha) • [LinkedIn](https://www.linkedin.com/in/joemecha/)

~ feel free to contact me ~

![Rug](/app/assets/images/rug.jpg "Adopt this dog")
