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

* Card Face
  * Employees/Collaborator  
    * All users may view baseball cards
    * Employees/Collaborators may create and update their personal baseball card with the following information:
      * Name
      * Title/ Position
      * Start Date
      * Personal Development Plan
      * Life Quote
      * Quote
      * Motto
      * Strengths:
        * Strengths finder (list of 5 attributes)
        * Myers Briggs (input from assessment tool?):
          * Five letter Acronym
          * Percentage of each category
        * Birkman (input from assessment tool?)
      * Vision
      * Short Term Goal
      * Long Term Goal
      * Area to Develop
      * Objective Setting
      * Personal Goal  
    * Employee/Collaborator can review skills list when filling out/ updating baseball card.  
  * Manager
    * All managers may view baseball cards
    * Managers can add, edit, and delete baseball card
    * Managers can add, edit, and remove projects to baseball card.
    * Managers can update fields of information in category "What others say"
      * after birthdays,
      * monthly pulse shout outs, and
      * completion of project
      * pulse survey
* Card Flip Side
  * Managers and employee/collaborator can view flip side of card by clicking on baseball card
  * 360 feedback (automatically updated?)
  

## Known Bugs:

* _No known bugs at this time._

## Expanded Features for Future Development:

* _Manager can select baseball cards to create a "hand", read: team._
* _Manager can shuffle deck for random team member selection._
* _Baseball cards for client/ client contacts._

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
