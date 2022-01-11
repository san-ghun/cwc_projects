# cwc_projects

Practicing iOS development with some simple demos.  
   
First, follow demo from online resources.   
Second, think about what learned from it.   
Third, think about improvements from demo.   
   
make records and keep on practice

---

TODO: - 01-TheCardGame
- Optimize the timer time to allow user to winable
- Allow user to reset game when game over
- ...

Tags: `MVC`, `UIKit`, `Storyboard`, `View Life cycle`, `UICollectionView`, `Timer.scheduledTimer()`, `RunLoop.main.add()`, `AVFoundation`, `AVAudioPlayer`, `Bundle.main.path()`, `URL()`, `UIView.transition()`, `UIView.animate()`, `DispatchQueue.main.asyncAfter()`, `UICollectionView.dequeueReusableCell()`

Tips:
- Keep in mind of ReusableCell in UICollectionView.

ref) [iOS ) View Controller의 생명주기(Life-Cycle) - ZeddiOS](https://zeddios.tistory.com/43)

---

TODO: - 02-FirestoreDemo
- Add simple CRUD process
- ...

Tags: `Swift Package`, `Firebase`, `Firestore`, `FirebaseAuth`, `UIKit`, `Storyboard`, `AVKit`, `AVPlayer`, `AVPlayerLayer`, `Bundle.main.path()`, `URL()`, `AVPlayerItem()`, `SignUp`, `SignIn`, `Login`, `NSPredicate().evaluate()`, `regex`, `UIView.window.makeKeyAndVisible()`

Tips:
- How to manage Storyboard identifiers with code. (-> Constants.swift)
- How to manage custom methods that style UI components with code reusability. (-> Utilities.swift)

---

TODO: - 03-LocalNotificationsDemo
- Add other notification practices
- ...

Tags: `UserNotifications`, `UNUserNotificationCenter.current()`, `requestAuthorization()`, `UNMutableNotificationContent()`, `Date().addingTimeInterval()`, `Calendar.current.dateComponents()`, `UNCalendarNotificationTrigger()`, `UUID().uuidString`, `UNNotificationRequest()`

Tips:
- Don't forget to register the request by `UNUserNotificationCenter.add(request)`

---

TODO: - 04-CollectionViewAnimation_GeminiDemo
- Play with Gemini and find out more from it
- Analyze the code OR Use for more animations
- ...
- Build a photo frame app that present many photo images with animation effects

Tags: `Cocoapods`, `pod`, `Gemini`, `UIKit`, `Storyboard`, `UICollectionView`, `UICollectionView.dequeueReusableCell()`, `UICollectionView.scrollViewDidScroll()`, 

Tips:
- Using CollectionView, if imageView don't fit well in simulator, check the CollectionView's Estmate Size as None in Storyboard.

---

TODO: - 05-SoundboardDemo
- Find way to connect user iphone's voice memo app to play with app like drum pad
- ...

Tags: `UIKit`, `Storyboard`, `AVFoundation`, `AVAudioPlayer`, `Bundle.main.url()`

Tips:
- Be aware of fit proportion when using Stack View in Storyboard.
- Alternative way to distinguish the UI components in code is using the `Tag` property that can set in Storyboard.

---

TODO: - 06-NewsAPI-JSON
- Would be good to have more complex way to display articles with randomized API with some UI
- ...

Tags: `API`, `Networking`, `JSON`, `Codable`, `URL(string:)`, `URLSession.shared`, `.dataTask()`, `JSONDecoder()`, `dataTask.resume()`

Tips:
- Use Codable struct to decode JSON with `JSONDecoder()`
- If not sure about nullability of response data, just use optional
- Keep on eye on the sturcture of JSON data 
- Don't forget to fire off the API Call by `dataTask.resume()`, after building the dataTask 

---

TODO: - 07-OCR_API_Demo
- Try other APIs those take body with more complex data, such as image and video
- Build more structured system of using API call and get response
- ...

Tags: `API`, `Networking`, `JSON`, `URL()`, `URLRequest()`, `.allHTTPHeaderFields`, `.httpBody`, `.httpMethod`, `URLSession.shared`, `.dataTask()`, `JSONSerialization`, `.data(withJSONObject:, options:, )`, `.jsonObject(with:, options:, )`, `HTTPURLResponse`

Tips:
- URL Request in Swift are quite annoying, compare to Python
- If didn't ready Codable struct, just use JSONSerialization
- Don't forget to fire off the API Call by `dataTask.resume()`, after building the dataTask 

---

TODO: - 08-CoreDataDemo
- CoreData is quite similar but also more annoying compare to traditional SQL Database, but can find fun with playing with it
- Better find way to play with CloudKit
- ...

Tags: `CoreData`, `NSPersistentContainer`, `NSFetchRequest<T>`, `NSManagedObjectContext()`, `DispatchQueue.main.async`, `UIAlertController`, `UIAlertAction`, `UISwipeActionsConfiguration`, `UIContextualAction`, `NSSortDescriptor`, `NSPredicate`, `NSSet`

Tips:
- Be causious to specify the coverage of CoreData entity and class by `Module` field
- Consider which Codegen menu to use using CoreData Class 
- When Navigation Bar and TableView are located in same StackView, StackView distribution with **Fill Proportionally** may not show TableViewCell
- Use *Fill Proportionally* only to *adjust initial position of components* and change and use **Fill** then it will be smooth
- Sort data with `NSSortDescriptor` and Filter data with `NSPredicate`

---

TODO: - 09-MongodbNoteDemo
- Fun to play with custom server app with database
- ...

Tags: `Alamofire`, `Swift Package`, `Navigation Controller`, `UITableView`, `Singleton`, `protocol`, `delegate`, `Delegate Protocol Pattern`, `JSONDecoder`, `dequeueReusableCell`, `Cell.contentConfiguration`, `viewWillAppear`, `AF.request().response {}`, `AF.request().responseData {}`, `URLEncoding.httpBody`, `Server-Client`, `MongoDB`, `Node.js`, `Express`, `Mongoose`, `JSON`, `REST-API`, `HTTP`, `segue.destination`, `segue.identifier`, `viewWillAppear()`, `viewDidAppear()`, `navigationController.popViewController()`, `DateFormatter().dateFormat`, `Date()`, `UITableViewCell`

Tips:
- Docker or any kinds of containerization tech like podman are very useful
- When code get larger, don't forget to organize and also don't postpone to organize and make comment
- ... 

---
