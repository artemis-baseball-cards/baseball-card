# Baseball Cards

### _Epicodus Internship Project for Artemis Connection, Inc., January 22, 2018_

### By Megan Olson, Linda Luu, Erik Zakrzrwski, Gennaro Anzalone, & L. Devin MacKrell

## Description

_This is a web based application for Artemis Connection, Inc. to view and sort employee and collaborator profiles. It has basic user authentication so that an individual can update their own baseball card, and only managers can update assigned project status, other details, and skills acquisition._

## Installation and Setup

<!-- To install on your own machine, follow the instructions below:

* Clone this repository.

* Run the following commands in the project root directory:
  ```
  bundle update
  rake db:setup
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser
* **To give an account admin privileges:**
  * In the project root run ```rails c```
  * Then run:
    ```ruby
    User.find_by(email: "[account email address]").update(admin: true)
    ```
  * The account will now have admin access to the app. -->

## Specifications

* Access
  * Employees/Collaborators
    * Can view employee baseball cards
    * Can view client baseball cards
    * Can access their own baseball card
  * Manager
    * Can access their own baseball card
    * Can access the baseball cards of employees/collaborators they manage
    * Can view and create client baseball cards
  * Administrators
    * Can access their own baseball card
    * Can create client baseball cards
    * Can edit roles of employees and managers

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
        * Expectation (who employee wants to be at Artemis and what can be expected of them)
        * Short Term Goal
        * Long Term Goal
        * Awesome Quality (what employee is great at and enjoys doing -- minimum list of 3)
        * Needs from others (how can Artemis as a whole help employee develop)
        * Receiving Feedback
        * Development (what employee is already doing to develop self toward vision)
        * Area to Develop (reference skills chart): list three areas
        * Objective Setting (short-term -- 30-90 days -- tactical goals selected with Manager)
        * Personal Goals (limit 3)
      * Employee/Collaborator can review skills list when filling out/ updating baseball card.  
    * Manager
      * Managers can view, add, edit, and delete employee baseball cards
      * Managers can add, edit, and remove projects to/from employee baseball cards.
      * Managers can update fields of information in category "What others say"
        * after birthdays,
        * monthly pulse shout outs, and
        * completion of project
        * pulse survey
    * Administrators
      * Admins can view, add, edit, and delete their own baseball card
  * Card Flip Side
    * 360 Feedback
      * Managers and employee/collaborator can view all 360 feedback on baseball cards
      * 360 feedback (automatically updated?)
    * What Others Say (WOS)
      * Employees can view WOS of all baseball cards
      * Managers can view, add, edit, and delete WOS of all employee baseball Cards
      * An abbreviated WOS is present on card flipside and can be expanded for full detail
      * WOS is structured as an Occasion, which includes:
        * Date of Feedback
        * What event led to feedback. Types:
          * End of Project (feedback from client)
          * Birthday Quotes (collected from Artemis team before employee's birthday)
          * Pulse survey shout outs
        * Comments

## Known Bugs:

* _No known bugs at this time._

## Expanded Features for Future Development:

* _Manager can select baseball cards to create a "hand", read: team._
* _Manager can shuffle deck for random team member selection._
* _Baseball cards for client/ client contacts._
* _Admins can add/edit new fields for employee and client baseball cards._

* _No known bugs at this time._

## Support and contact details

_Please contact [g.anzalone12@gmail.com](mailto:g.anzalone12@gmail.com), [linda.luu1226@gmail.com](mailto:linda.luu1226@gmail.com), [erik.zak.sf@gmail.com](mailto:erik.zak.sf@gmail.com), [meganannetteolson@yahoo.com](mailto:meganannetteolson@yahoo.com), or [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Bootstrap
* Devise

### License

Copyright (c) 2018 **Gennaro Anzalone, Linda Luu, Erik Zakrzrwski, Megan Olson & L. Devin MacKrell**

*This software is licensed under the MIT license.*
