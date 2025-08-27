
# Rails Mock Code Challenge: Science Fair

Sharpen your Rails skills by building a Science Fair app for NYC! This practice challenge mirrors a real-world scenario where you'll manage fairs and their projects.

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, code and debug

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

## The Domain

You've just been hired by the 'NYC Science Fair Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite science fairs and the projects in them. To do this, we need a way to keep track of the many NYC fairs and record the projects for each fair.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of fairs. Visiting `/fairs` displays all of the fairs recorded by members. Unfortunately, we don't have a way for members to record the projects in each fair. **Each Fair has many Projects, and each Project belongs to a Fair.**

## Instructions / Deliverables

***To help you complete this assignment, we've listed the steps required. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one.***

1. Before you start building the new functionality, make sure that you are able to create and view a new fair.

2. Let's build following an inside-out approach (Domain model to views). Begin by developing the classes required to persist Projects and associate them to a Fair. You should then be able to run the code below:

```Ruby
project.fair = fair
project.save
fair.projects.first === project # should return true
fair = Fair.first
project = Project.create(name:'Volcano Eruption', description: 'A classic science fair project demonstrating a chemical reaction')
project.fair = fair
project.save
fair.projects.first === project # should return true
```

3. Set up validations for the project and the fair:

+ A project must have a name and a description.
+ A fair must have a unique name and an address.

4. Now that our backend domain model is properly setup we can build the user facing functionality. Adding this functionality will require you to develop code across many different parts of the application including routes, controllers and views.

Items needed to complete an application that works as described include:

+ `Project` new, create, and show actions & corresponding views that display all shown data
+ `Fair` show page updated to list all its projects
+ All the links and forms to connect the models (the `Project` show page should link back to its `Fair` show page)

---

+ Don't be confused by the sottocasanyc.com/brooklyn/menu website the demo shows. It is just being used to obtain a project name and description.
