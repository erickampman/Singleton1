# SwiftData and Singleton

Uploading this because when trying to find a solution on the web I failed to find something that worked for my needs. 

For example, 

https://www.hackingwithswift.com/quick-start/swiftdata/how-to-use-swiftdata-to-store-singletons

In this case, since the data is not associated with any editing components (like TextField), the problem of getting a binding to the data is avoided. 

Until I find a better answer, the solution I'm presenting is as follows:

- Treat the Singleton like any other SwiftData object and assume there will be an array of them
- Assume the query will be dealing with an array of these objects.
- onAppear, check if the array is empty, and if so, insert one object with default properties. 
- Avoid crashes by checking whether the array is empty before presenting UI that needs it. 


