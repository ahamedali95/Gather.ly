# Gather.ly
##### Potluck Event Planner Web Application

Gather.ly is a web application written with *Ruby on Rails* to organize group meals. The application permits users to create an account, book potluck events along with recipes, explore all events created by other users, able to join/leave events as they wish and add recipes/ingredients to their list. Gather.ly effectively uses CRUD functionality, RESTful routing and MVC architecture. This application implements the core concept of relational database as a foundation to relate data to one another so that information can be efficiently retrieved. The relationships are formed using ActiveRecord associations. This application also utilizes Rake tool to effectively manage the database changes(migration, seed, rollback, etc..).

Following is the Entity Relationship Diagram that describes the entities/models and associations between these entities:

![imageedit_14_9756746858](https://user-images.githubusercontent.com/24445922/39903751-c53a6c94-54a2-11e8-9194-37f5a0e467b9.png)

### Notable tools:
* Paperclip - a Ruby gem provided by thoughtbot which allows easy file attachment management.
* Bootstrap - a front-end framework which allows to build more responsive, user-friendly web applications.
* Bcrypt - a Ruby gem provided by The OpenBSD project which allows to safely handle passwords by hashing the passwords.
* RSpec - a Ruby behavior-driven development framework which allows to create unit tests.

### Demo
[![watch this video](https://img.youtube.com/vi/4D7SWuyDCos/0.jpg)](https://youtu.be/4D7SWuyDCos)

### Instructions

To start, run ```rails s``` This will start the app at PORT 3000. To designate a different port number for the app, run ```rails s -p {PORT NO.}```

### Contributors
1. <a href="https://github.com/ahamedali95/">@ahamedali95</a>
2. <a href="https://github.com/ahkian">@ahkian</a>
3. <a href="https://github.com/briecodes">@briecodes</a>
4. <a href="https://github.com/jrgreiner115">@jrgreiner115</a>
