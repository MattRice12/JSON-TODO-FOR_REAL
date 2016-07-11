#JSON TODO_APP

## Steps
###1) Created new rails project
###2) Created Tasks Table w/
	a) body
	b) list_id
	c) complete
###3) Created Lists Table w/
	a) title
###4) Migrated tables to DB
###5) Updated seeds file w/
	a) Fake lists
	b) Fake tasks
###6) Created full CRUD actions for List in lists_controller
###7) Created full CRUD actions for Tasks in tasks_controller
###8) Updated Routes
###9) Set up validations for lists and tasks

#___________________

## Features
#Lists:
###1) Can see all lists
GET >
http://localhost:3000/lists
###2) Can see individual list
GET >
http://localhost:3000/lists/1
###3) Can create new list
POST >
http://localhost:3000/lists/6
###4) Can update existing list
PUT >
http://localhost:3000/lists/1
###5) Can delete individual list
DELETE >
http://localhost:3000/lists/1
#___________________
###6) Can see all tasks
GET >
http://localhost:3000/
GET >
http://localhost:3000/tasks
###7.1) Can see individual task
GET >
http://localhost:3000/tasks/1
###7.2) Can see only completed tasks
GET >
http://localhost:3000/tasks/complete
###7.3) Can see only incomplete tasks
GET >
http://localhost:3000/tasks/incomplete
###8) Can create new task
POST >
http://localhost:3000/tasks/6
###9) Can update existing task
PUT >
http://localhost:3000/tasks/1
###10) Can delete individual task
DELETE >
http://localhost:3000/tasks/1
