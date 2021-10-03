# terminalT1A3

## Welcome 
This app is designed to encourage users to surf more frequently.
There is a point system to encourage users to get points and track their progress

### Why I developed this app

I found myself not surfing as often as I want to and I often leave it to tomorrow, which never gets anything done. 
This app will help to provide accountability  



## R2 - separate headings for each documentation requirement and answers organised under the appropriate headings



## R3 - Full attribution to referenced sources (where applicable)



## R4 - link to source control repository

Link to github repo

```ruby
https://github.com/laurencetuchin/terminalT1A3
```



## R5 - Develop a stateent of purpose and scope for your application. It must include 



###### Statement of purpose

#### Statement of purpose

This app is designed to encourage users to surf more frequently.

###### Describe at a high level what the application will do 

The application will let users record information about their surfing session and provide a point system to encourage accountability for surfing sessions 

###### Identify the problem it will solve and explain why you are developing it 

Accountability and frequency of surfing.

During lockdown I found myself not surfing as frequently as I used to. I would often try to leave surfing till the following day but never followed up on it so I didn't end up surfing. I wanted to create an app that gives accountability, I can use the app to check the last time I went surfing. There is also a points system so users are given easier values to keep track of. 

###### Identify the target audience


Surfers but could pivot the product to a fitness tracker by tweaking some of the features

###### Explain how a member of the target audience will use it

Users can input information about their surfing sessions to keep track of how good/bad their surf was and be able to see when the last time they went surfing. They enter information which is then recorded into a Surf object, users can export data on their surf session. They can manually compare scores with friends to keep each other accountable. 

## R6 - Develop a list of features that will be included in the application. It must include

#### Feature 1 - Add surfing session

Adding surf session - This allows the user to input detailed information about a surf session. This can help them track their progress over time and could potentially help them identify good surfing conditions for a particular location which will ideally lead them to surfing more frequently.

#### Feature 2 - Point scoring system

Point scoring system - Calculates a point score for the user based on minutes spent surfing, difficulty of surf conditions and what day of the week it is. This will identify a score based on 3 factors, the length in minutes of how long a user has surfed for. The difficulty of surf conditions will reward users based on more difficult condition, it can be assumed that users will have less minutes in the surf if the conditions are more difficult which is why they are rewarded with a points multiplier for more difficult conditions. The third factor influencing the score is the day of week, if it's the weekend, the user will score less than if it's a weekday, this is because it's likely to be more difficult to surf on a weekday before/after work than it is on the weekend.

#### Feature 3 -  Export to YAML

Exports Surf object into YAML. This contains all the session details after the user adds data.



###### Minor features added

- Random surfing quote generator

- Delete Surf
- Favorite Surf
- Returns last Surf
- Check total points
- Show all surfs


## R7 - Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user

#### Feature 1 - Add surf session

Interaction with feature 

###### Finding how to interact with feature 

User is presented with information that they haven't added any surf sessions if no surf sessions exist.  

###### How to interact with feature 

They then have a menu with an option to add a surf session. 

###### Error handling

If the user inputs an invalid response, they will be presented with information in regards to how they can correctly enter that information. E.g. if the user inputs anything other than number digits for how many minutes they have surfed, they will be presented with information that they can only enter digits information.

#### Feature 2 - Points scoring system

Interaction with feature 

###### Finding how to interact with feature 

User is presented with information at the start of the application about scoring points, and that they points are scored on a variety of factors.

###### How to interact with feature 

Once a user has added information about their surfing session, they will be return with a point score. They will also have the option to view total points in the main menu.

###### Error handling

The points is calculated from multiplier 3 different factors, user input will be rejected if the information they enter is anything except a digit. The user has limited access and interaction with the point scoring system except for the original input when they are adding the surf session. 

#### Feature 3 - Export to YAML

Interaction with feature 

###### Finding how to interact with feature 

User is presented with information at the start of the application about being able to export surfing sessions. 

###### How to interact with feature 

They will also have the option to export surf session information in the main menu.

###### Error handling

If there is no information in the List object, the user will be returned with information that they need to add information before they can export. 


## R8 - Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.



![Flowchart (2)](C:\Users\Laurence\Downloads\Flowchart (2).png)



## R9 - Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan


> **Your checklists for each feature should have at least 5 items.**



![image-20211003193025468](https://github.com/laurencetuchin/terminalT1A3/blob/master/docs/images/image-20211003193025468.png)



#### Trello

I used Trello for my project management which helped me organise my workflow and helped to prioritise tasks based on when they needed to be complete

##### Feature 1 - Add Surf session

Adding the Surf session was the most crucial step because the other features couldn't be worked on until this step was complete 

Steps taken:

- Use tty-prompt to help validate input and reduce user error
- Get user input
- Push user input into Surf class object
- Take in data parameters
- Asks user clearly so they understand what to include into input

##### Feature 2 - Points scoring system

The points scoring system could be worked on once the adding feature was complete. 

Originally I tried pushing the variables through to the surf object and then calculating the points in the Surf object then calling back to the List object but this was too difficult for me to figure out. I decided that it was easier to calculate the score whilst being in the add process and then push the score to the surf object. 

Steps taken:

- Points scoring for minutes surfing
- Points scoring for difficulty
- Points scoring for day of week (lower on weekends)
- Calculate total score by multiplying these factors
- Assign points to instance variable in surf object

##### Feature 3 - Export to YAML

Steps taken:

- Decide on what data to pass back 
- Error handling on if object not made 
- Push surf object to file
- Greet user with green on success, red on failure
- Tell the user the location it has been saved


## R10 - Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

### Get started with application

Are you ready to get started?


1. Clone repository 

   ```ruby
   git clone https://github.com/laurencetuchin/terminalT1A3.git
   ```

2. Move into src folder

   ```ruby
   cd src
   ```

   

3. Install dependencies

   ```ruby
   bundle install
   ```

3. Run application

   ```ruby
   ruby src/main.rb
   ```



#### R17 - Testing

Manual unit test

terminal run

ruby src/main.rb

![image-20211003203015661](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203015661.png)

enter name "Laurence"

press "enter"

![image-20211003203048720](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203048720.png)

press "enter"

![image-20211003203103268](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203103268.png)

press "enter"

![image-20211003203125160](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203125160.png)

Enter name "test"

![image-20211003203151322](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203151322.png)

Select "easy"

![image-20211003203208064](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203208064.png)

Enter 100 minutes

![image-20211003203233863](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203233863.png)

Enter "woonona"

![image-20211003203258824](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203258824.png)

Enter 8 for rating

![image-20211003203317642](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203317642.png)

Enter "monday"

![image-20211003203341926](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203341926.png)

Enter "no"

![image-20211003203411189](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203411189.png)

Press "enter"

![image-20211003203443572](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203443572.png)

Press "enter"

![image-20211003203505792](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203505792.png)

Check score

![image-20211003203531163](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203531163.png)

return to menu

![image-20211003203558469](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203558469.png)

Select session to favorite, previous value false to favorite

Enter "1"

![image-20211003203644178](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203644178.png)

Session now favorited

return to main menu

![image-20211003203710970](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203710970.png)

select export

export successful

return to main menu

select "delete"

![image-20211003203744973](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203744973.png)



Enter "1"

return to main menu

Greeted with "You currently don't have any surf sessions"

![image-20211003203829054](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003203829054.png)



Fail case

Enter name "laurence"

![image-20211003204020914](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204020914.png)

Press "enter"

Press "enter"

![image-20211003204110264](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204110264.png)

Select "check score"

![image-20211003204126268](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204126268.png)

returns no score value

returns to main menu

select "delete"

![image-20211003204209566](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204209566.png)

return to main menu

Select "export"

![image-20211003204303846](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204303846.png)

return to main menu

select "add"

![image-20211003204619290](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204619290.png)

enter invalid information, should be number but I inputted letters

![image-20211003204717632](C:\Users\Laurence\AppData\Roaming\Typora\typora-user-images\image-20211003204717632.png)

gets InputNumberError and tells the user to "Please input numbers ONLY"

