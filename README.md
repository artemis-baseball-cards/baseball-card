# Baseball Cards

### _Epicodus Internship Project for Artemis Connection, Inc., January 22, 2018_

### By Megan Olson, Linda Luu, Erik Zakrzrwski, Gennaro Anzalone, & L. Devin MacKrell

## Description

_This is a web based application for Artemis Connection, Inc. to view and sort employee and collaborator profiles. It has basic user authentication so that an individual can update their own baseball card, and only managers can update assigned project status, other details, and skills acquisition._

## Installation and Setup

To install on your own machine, follow the instructions below:

* Clone this repository.

* Run the following commands in the project root directory:
  ```
  bundle update
  rake db:setup
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser of choice
* **To give an account admin privileges:**
  * In the project root run ```rails c```
  * Then run:
    ```ruby
    User.find_by(email: "[account email address]").update(admin: true)
    ```
  * The account will now have admin access to the app.

## Live app

To view a live version of the app - visit:
http://baseball-card-env.ppxiu8phdg.us-west-2.elasticbeanstalk.com

## Specifications

  * Employees/Collaborators Features
    * View employee baseball cards (face & flip sides)
    * Edit/update their own baseball card
    * View project baseball cards
    * View, create, and update client baseball cards
    * View, create, and update contacts for client baseball cards

  * Manager Features
    * Access all employees/collaborators baseball cards (face & flip sides)
    * Create and update skills on employees/collaborators baseball cards
    * View, create, and update 360 feedback for employee baseball cards
    * View, create, and update What Others Say (WOS) feedback for employee cards
    * View, create, and update client baseball cards
    * View, create, and update contacts for client baseball cards
    * View, create, and update project baseball cards

  * Administrator Features
    * View, create, and update all employees/collaborators baseball cards
    * View, create, and update client baseball cards
    * View, create, and update contacts for client baseball cards
    * View, create, and update project baseball cards
    * ```ADMIN``` dashboard
      * View, create, and update all cards and classes
      * Approve user sign up requests
      * Provide and remove manager / admin access to a user
      * View, create, and update all user information
      * View, create, and update the following classes:  
        * Industry experience,
        * Skills, and
        * Project roles


* Employee Baseball Cards
  * Card Face
    * Employees/Collaborators  
      * All users may view baseball cards
      * Employees/Collaborators may create and update their personal baseball card with the following information:
        * Name
        * Title/ Position
        * Start Date
        * Personal Development Plan ?
        * Life Quote
        * Quote
        * Motto
        * Strengths:
          * Strengths finder (list of top 5 attributes)
          * Myers Briggs (input from assessment tool?):
            * Five letter Acronym
            * Percentage of each category
          * Birkman (input from assessment tool?)
        * Mission  
        * Vision
        * Expectation (who employee wants to be at Artemis and what  be expected of them)
        * Short Term Goal
        * Long Term Goal
        * Awesome Quality (what employee is great at and enjoys doing -- minimum list of 3)
        * Needs from others (how  Artemis as a whole help employee develop)
        * Receiving Feedback
        * Development (what employee is already doing to develop self toward vision)
        * Area to Develop (reference skills chart): list three areas
        * Objective Setting (short-term -- 30-90 days -- tactical goals selected with Manager)
        * Personal Goals (limit 3)
      * Employee/Collaborator  review skills list when filling out/ updating baseball card.  
    * Manager
      * Managers  view, add, edit, and delete employee baseball cards
      * Managers  add, edit, and remove projects to/from employee baseball cards.
      * Managers  update fields of information in category "What others say"
        * after birthdays,
        * monthly pulse shout outs, and
        * completion of project
        * pulse survey
    * Administrators
      * Admins  view, add, edit, and delete their own baseball card
  * Card Flip Side
    * 360 Feedback
      * Managers  view all 360 feedback on baseball cards including negative feedback
      * Employees/Collaborators  view 360 feedback that’s considered positive
      * 360 feedback is automatically fed from google form - parsed from a google spreadsheet
    * What Others Say (WOS)
      * Employees  view WOS of all baseball cards
      * Managers  view, add, edit, and delete WOS of all employee baseball Cards
      * An abbreviated WOS is present on card flipside and  be expanded for full detail
      * WOS is structured as an Occasion, which includes:
        * Date of Feedback
        * What event led to feedback. Types:
          * End of Project (feedback from client)
          * Birthday Quotes (collected from Artemis team before employee's birthday)
          * Pulse survey shout outs
        * Comments


* Project Baseball Cards
  * Project Title
  * Company (selected from available clients)
  * Start date
  * End date
  * Industry/ Project Type (select one or more)
  * Project Location
    * Country
    * State
    * City
  * Assign Employees / Collaborators (one or more) sorted by project role categories:
      * Interns
      * Analysts
      * Engagement Managers  
      * Principals
      * Associates
      * Partners

* Client Baseball Cards (with Contacts)
  * Name
  * Company goals
  * Personal development goals
  * Future work opportunities
  * Once made, any user can add contacts to a client baseball card
  	* Contacts
  	  * Name
  	  * Contact
  	  * Position
  	  * Meeting preferences
  	  * Email preferences
  	  * Communication format preferences
  	  * Other



* Adding users
  * Prospective users sign up on the login page.
  * An email for authorization will be automatically sent to the administrator that there is a user request pending.
  * The administrator will login to the site using the administrator login & password.
  * Navigating to the ```ADMIN``` Dashboard via the navigation bar, the Admin will select the ```Users``` tab located on the left sidebar.
  * The admin will click on the pencil icon (edit) to the right of the prospective user. (New user requests are added to the top of the list of users.)
  * The admin will have the option to add supervisor or administrator access to the user via ```Superadmin role``` or ```Supervisor role``` checkboxes, respectively. The ```User``` selection is automatically checked.
  * Scrolling to the bottom of the page, the admin will check the ```Approved``` before clicking the ```Save``` button.
  * The now approved user will be automatically notified via their email login that their access has been approved.
  * The user can now login to the site with their authorized login and password.


## Known Bugs:

* _Classes ```Company``` and ```Client``` are represented as ```Client``` and ```Contact``` on the UI._

## Expanded Features for Future Development:

* _Sorting employees to assign to projects based on: skills, industry experience, project roles, and location._
* _Hierarchial sorting of more than one search term._
* _Manager selects baseball cards to create a "hand", read: team._
* _Manager shuffle deck for random team member selection._
* _Mobile friendly app._
* _Survey form flexibility (adding, deleting, updating question fields)._
* _Auto-populating of selected employee / collaborator in the New Project before submitting the form._
* _Automatically add created project roles to the Project New Assign Employees field_
* _Thorough testing_

## Support and contact details

_Please contact [g.anzalone12@gmail.com](mailto:g.anzalone12@gmail.com), [linda.luu1226@gmail.com](mailto:linda.luu1226@gmail.com), [erik.zak.sf@gmail.com](mailto:erik.zak.sf@gmail.com), [meganannetteolson@yahoo.com](mailto:meganannetteolson@yahoo.com), or [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Bootstrap
* Devise
* Google forms
* Amazon Web Services (AWS)
* Chartkick

### License

Copyright (c) 2018 **Linda Luu, Erik Zakrzrewski, Megan Olson, Gennaro Anzalone,& L. Devin MacKrell**

*This software is licensed under the MIT license.*
