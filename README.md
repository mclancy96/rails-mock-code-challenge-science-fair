
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

You've just been hired by the 'NYC Science Fair Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite science fairs and the projects in them. To do this, we need a way to keep track of the many NYC fairs and record the projects for each fair.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of fairs. Visiting `/fairs` displays all of the fairs recorded by members. Unfortunately, we don't have a way for members to record the projects in each fair. **Each Fair has many Projects, and each Project belongs to a Fair.**

## Deliverables

Implement the following features in this repository:

1. **Project Model and Association**

    + Create a `Project` model that belongs_to a `Fair`.
    + Update the `Fair` model to have_many `Projects`.
    + Set up a database migration to create the `projects` table with appropriate columns and a foreign key to `fairs`.

2. **Validations**

    + Ensure a `Project` requires a name and description.
    + Ensure a `Fair` requires a unique name and an address.
    + Display validation errors on the relevant form pages when present.

3. **RESTful Routes and Controller Actions for Projects**

    + Implement `new`, `create`, and `show` actions for `Projects` in the controller.
    + Add routes for these actions.

4. **Project Form and Creation Flow**

    + Provide a link to add a new project from each `Fair` show page.
    + The new project form should:
      + Allow the user to select the associated fair (if not already scoped to a fair).
      + Display validation errors if submission fails.
    + After creating a project, redirect to the project’s show page.

5. **Project Show Page**

    + Display all project attributes, including its associated fair’s name.
    + Include a link back to the associated fair’s show page.

6. **Fair Show Page Updates**

    + List all projects associated with the fair, showing each project’s name (as a link to its show page).
    + Include a link to add a new project for this fair.

7. **Navigation and User Flow**

    + Ensure users can navigate from the fairs index to a fair’s show page, from a fair’s show page to its projects, and from a project’s show page back to its fair.

8. **Database Migrations**

    + Create and run migrations to set up the `projects` table and any necessary changes to the `fairs` table for associations and validations.

9. **Rails Console Usage**

    + Confirm that associations and validations work as expected in the Rails console (e.g., creating projects, assigning them to fairs, and testing validations).
