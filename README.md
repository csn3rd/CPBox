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
- API Documentation / Language Tool:
  - language : String
  - name : String
  - description : String
  - link : String
  - platform : String?
  - rating : Int?
- Article:
  - name : String
  - author : String
  - description : String
  - link : String
- Book:
  - name : String
  - author : String
  - description : String
  - link : String
  - rating : Int
- Blog:
  - name : String
  - author : String
  - link : String
- Calendar:
  - name : String
  - description : String
  - link : String
  - rating : Int
- Course:
  - name : String
  - description : String
  - link : String
  - rating : Int
- Community:
  - name : String
  - description : String?
  - link : String
- Notebook:
  - name : String
  - description : String
  - link : String
  - rating : Int
- Tutorial:
  - name : String
  - description : String
  - link : String
  - rating : Int
- Video:
  - channelName : String
  - link : String
  - description : String?
- Website:
  - name : String
  - description : String
  - link : String
  - rating : Int
```
## Views
- `CollectionViewCell` for each model. Subclass of `UICollectionViewCell` to display models.
- `TableViewCell` for each model. Subclasses of `UITableViewCell` to display resources.
​
## Controllers
- `CollectionViewController` holds the collection view cells of models.
- `TableViewController` holds the table view cells of resources.
​
# Weekly Milestone
## Week 4 - Usable Build
- Setup Storyboard
  - Layout UICollectionViewCell
  - Layout UITableViewCell
​
  Monday: Start Design Doc
  Tuesday: Finish Design Doc
  Wednesday: Build the storyboards and link them
  Thursday: Build the `CollectionView`
  Friday: Build the `TableView`
  Weekend: Figure out how to parse information
​
## Week 5 - Finish Features
- implement models
​
  Monday: Build API Documentation and Language Tool model
  Tuesday: Build Article model
  Wednesday: Parse the information
  Thursday: Work on displaying models
  Friday: Work on displaying models
  Weekend: Clean up work
​
## Week 6 - Polish
- Finalize layout and design
- Push to App Store
- App descriptions
- Screenshots and Videos
​
  Monday: Clean up layout and design
  Tuesday: Clean up layout and design
  Wednesday: App descriptions and take screenshots and videos
  Thursday: Push to App store
  Friday: Demo
  Weekend: Demo
  
Checked by Yves
