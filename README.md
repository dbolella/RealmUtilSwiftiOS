# RealmUtilSwiftiOS
Utility Class for the Realm Database in Swift for iOS

##Experiment
###Can we create a common Realm Util?
Realm does allow for simple/plain code.  For instance, models are extremely easy to setup and queries are very standard.  Though you will quickly find blocks of code being repeated across different models.  Also, there are no built-in converters, for example, JSON to Object.  To be clear, there are, without a doubt, numerous edge cases.  However, there are enough generic functions that, I feel, we can collect into a simple util class.

This repo is an ongoing project that's really for experimenting but also just for fun.  But feel free to explore it yourself and let me know what you think!


###Why Realm?
Realm is a mobile database that is sort of a replacement to SQLlite/Core Data that is known to be lightweight and even faster than it's competition.  Realm is free and relatively easy to include in your project (though many comment that it's quite difficult to remove).  One of the greatest advantages is that it flattens some of the traditional Data Access boilerplate and merges Models with Objects.

With Realm 2.0, a brand new Platform has been released complete with an object server.  Whereas before a Realm was local to an app, it can now be synced to a server side database.  This removes the dependency of translating and sending Realm data manually to some other server/cloud based database solution.  It even handles the syncing automatically with very little code needed to setup.

Is Realm the best solution: it depends.  But especially with the new platform, it makes it worth while to consider.

###Resources
[Realm](realm.io)

[Realm Platform vs RESTful APIs](https://realm.io/news/best-practices-pain-points-mobile-networking-rest-api-failures/)

##Tech Details
###How to use the util in your project
It's quite simple actually.  Just take the Realm frameworks, SwiftyJSON class, and the realmUtil class and put them into your project.  That's it!

###Adding Realm to a Project
[Get all Realm items here](https://realm.io/docs/realm-mobile-platform/get-started/)


###Realm Tutorial
[Simple Tutorial](https://realm.io/docs/swift/latest/)
