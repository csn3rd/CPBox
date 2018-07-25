# CPBox
A database containing all the resources needed to succeed in competitive programming competitions. Resources include API Documentation / Language tools, articles, books, blogs, calendars, courses, communities, notebooks, tutorials, videos, and websites.
​
## Audience
This app will serve as a repository for anyone wanting to learn or review programming concepts, especially those regarding algorithms and data structures. They will be able to find the resources for their programming needs.
​
## Experience
A user opens the app and sees the whole database. The user can select topics or types of resources they are looking for. After the user enters their criteria, the app will display resources which fit some or all of the user's criteria (ordered from most similar to least). Users can view the resources from within the app and can bookmark certain resources for future use.
​
# Technical
## Models
```
⋅⋅* API Documentation / Language Tool:
  ⋅⋅* language : String
  ⋅⋅* name : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int?
⋅⋅* Article:
  ⋅⋅* name : String
  ⋅⋅* author : String
  ⋅⋅* description : String
  ⋅⋅* link : String
⋅⋅* Book:
  ⋅⋅* name : String
  ⋅⋅* author : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int
⋅⋅* Blog:
  ⋅⋅* name : String
  ⋅⋅* author : String
  ⋅⋅* link : String
⋅⋅* Calendar:
  ⋅⋅* name : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int
⋅⋅* Course:
  ⋅⋅* name : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int
⋅⋅* Community:
  ⋅⋅* name : String
  ⋅⋅* description : String?
  ⋅⋅* link : String
⋅⋅* Notebook:
  ⋅⋅* name : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int
⋅⋅* Tutorial:
  ⋅⋅* name : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int
⋅⋅* Video:
  ⋅⋅* channelName : String
  ⋅⋅* link : String
  ⋅⋅* description : String?
⋅⋅* Websites:
  ⋅⋅* name : String
  ⋅⋅* description : String
  ⋅⋅* link : String
  ⋅⋅* rating : Int
```
## Views
[What custom views do we need to create? Include pictures of your prototypes/sketches!]
​
## Controllers
[What controllers will we need? What will they do?]
​
## Other
[Any other frameworks / things we will need? Helpers? Services?]
​
# Weekly Milestone
## Week 4 - Usable Build
[List of tasks needed to be complete before you can start user testing]
- task 1
- task 2
- task 3
- [...]
​
## Week 5 - Finish Features
[List of tasks to complete the implementation of features]
- task 1
- task 2
- task 3
- [...]
​
## Week 6 - Polish
[List of tasks needed to polish and ship to the app store]
- task 1
- task 2
- task 3
- [...]
