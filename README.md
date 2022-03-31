# cwc_projects

Practicing iOS development with some simple demos.  
   
First, follow demo from online resources.   
Second, think about what learned from it.   
Third, think about improvements from demo.   
   
make records and keep on practice

---

TODO: - [01-TheCardGame](https://github.com/san-ghun/cwc_projects/tree/develop/01-TheCardGame/TheCardGame)
- Optimize the timer time to allow user to winable
- Allow user to reset game when game over
- ...

Tags: `MVC`, `UIKit`, `Storyboard`, `View Life cycle`, `UICollectionView`, `Timer.scheduledTimer()`, `RunLoop.main.add()`, `AVFoundation`, `AVAudioPlayer`, `Bundle.main.path()`, `URL()`, `UIView.transition()`, `UIView.animate()`, `DispatchQueue.main.asyncAfter()`, `UICollectionView.dequeueReusableCell()`

Tips:
- Keep in mind of ReusableCell in UICollectionView.

ref) [iOS ) View Controller의 생명주기(Life-Cycle) - ZeddiOS](https://zeddios.tistory.com/43)

---

TODO: - [02-FirestoreDemo](https://github.com/san-ghun/cwc_projects/tree/develop/02-FirestoreDemo/FirestoreDemo)
- Add simple CRUD process
- ...

Tags: `MVC`, `Swift Package`, `Firebase`, `Firestore`, `FirebaseAuth`, `UIKit`, `Storyboard`, `AVKit`, `AVPlayer`, `AVPlayerLayer`, `Bundle.main.path()`, `URL()`, `AVPlayerItem()`, `SignUp`, `SignIn`, `Login`, `NSPredicate().evaluate()`, `regex`, `UIView.window.makeKeyAndVisible()`

Tips:
- How to manage Storyboard identifiers with code. (-> Constants.swift)
- How to manage custom methods that style UI components with code reusability. (-> Utilities.swift)

---

TODO: - [03-LocalNotificationsDemo](https://github.com/san-ghun/cwc_projects/tree/develop/03-LocalNotificationDemo/LocalNotificationsDemo)
- Add other notification practices
- ...

Tags: `MVC`, `UserNotifications`, `UNUserNotificationCenter.current()`, `requestAuthorization()`, `UNMutableNotificationContent()`, `Date().addingTimeInterval()`, `Calendar.current.dateComponents()`, `UNCalendarNotificationTrigger()`, `UUID().uuidString`, `UNNotificationRequest()`

Tips:
- Don't forget to register the request by `UNUserNotificationCenter.add(request)`

---

TODO: - [04-CollectionViewAnimation_GeminiDemo](https://github.com/san-ghun/cwc_projects/tree/develop/04-CollectionViewAnimation_GeminiDemo/GeminiDemo)
- Play with Gemini and find out more from it
- Analyze the code OR Use for more animations
- ...
- Build a photo frame app that present many photo images with animation effects

Tags: `MVC`, `Cocoapods`, `pod`, `Gemini`, `UIKit`, `Storyboard`, `UICollectionView`, `UICollectionView.dequeueReusableCell()`, `UICollectionView.scrollViewDidScroll()`, 

Tips:
- Using CollectionView, if imageView don't fit well in simulator, check the CollectionView's Estmate Size as None in Storyboard.

---

TODO: - [05-SoundboardDemo](https://github.com/san-ghun/cwc_projects/tree/develop/05-SoundboardDemo/SoundboardDemo)
- Find way to connect user iphone's voice memo app to play with app like drum pad
- ...

Tags: `MVC`, `UIKit`, `Storyboard`, `AVFoundation`, `AVAudioPlayer`, `Bundle.main.url()`

Tips:
- Be aware of fit proportion when using Stack View in Storyboard.
- Alternative way to distinguish the UI components in code is using the `Tag` property that can set in Storyboard.

---

TODO: - [06-NewsAPI-JSON](https://github.com/san-ghun/cwc_projects/tree/develop/06-NewsAPI-JSON/NewsAPI-JSON)
- Would be good to have more complex way to display articles with randomized API with some UI
- ...

Tags: `MVC`, `API`, `Networking`, `JSON`, `Codable`, `URL(string:)`, `URLSession.shared`, `.dataTask()`, `JSONDecoder()`, `dataTask.resume()`

Tips:
- Use Codable struct to decode JSON with `JSONDecoder()`
- If not sure about nullability of response data, just use optional
- Keep on eye on the sturcture of JSON data 
- Don't forget to fire off the API Call by `dataTask.resume()`, after building the dataTask 

---

TODO: - [07-OCR_API_Demo](https://github.com/san-ghun/cwc_projects/tree/develop/07-OCR_API_Demo/OCR-API-Demo)
- Try other APIs those take body with more complex data, such as image and video
- Build more structured system of using API call and get response
- ...

Tags: `MVC`, `API`, `Networking`, `JSON`, `URL()`, `URLRequest()`, `.allHTTPHeaderFields`, `.httpBody`, `.httpMethod`, `URLSession.shared`, `.dataTask()`, `JSONSerialization`, `.data(withJSONObject:, options:, )`, `.jsonObject(with:, options:, )`, `HTTPURLResponse`

Tips:
- URL Request in Swift are quite annoying, compare to Python
- If didn't ready Codable struct, just use JSONSerialization
- Don't forget to fire off the API Call by `dataTask.resume()`, after building the dataTask 

---

TODO: - [08-CoreDataDemo](https://github.com/san-ghun/cwc_projects/tree/develop/08-CoreDataDemo/CoreDataDemo)
- CoreData is quite similar but also more annoying compare to traditional SQL Database, but can find fun with playing with it
- Better find way to play with CloudKit
- ...

Tags: `MVC`, `CoreData`, `NSPersistentContainer`, `NSFetchRequest<T>`, `NSManagedObjectContext()`, `DispatchQueue.main.async`, `UIAlertController`, `UIAlertAction`, `UISwipeActionsConfiguration`, `UIContextualAction`, `NSSortDescriptor`, `NSPredicate`, `NSSet`

Tips:
- Be causious to specify the coverage of CoreData entity and class by `Module` field
- Consider which Codegen menu to use using CoreData Class 
- When Navigation Bar and TableView are located in same StackView, StackView distribution with **Fill Proportionally** may not show TableViewCell
- Use *Fill Proportionally* only to *adjust initial position of components* and change and use **Fill** then it will be smooth
- Sort data with `NSSortDescriptor` and Filter data with `NSPredicate`

---

TODO: - [09-MongodbNoteDemo](https://github.com/san-ghun/cwc_projects/tree/develop/09-MongodbNoteDemo)
- Fun to play with custom server app with database
- ...

Tags: `MVC`, `Alamofire`, `Swift Package`, `Navigation Controller`, `UITableView`, `Singleton`, `protocol`, `delegate`, `Delegate Protocol Pattern`, `JSONDecoder`, `dequeueReusableCell`, `Cell.contentConfiguration`, `viewWillAppear`, `AF.request().response {}`, `AF.request().responseData {}`, `URLEncoding.httpBody`, `Server-Client`, `MongoDB`, `Node.js`, `Express`, `Mongoose`, `JSON`, `REST-API`, `HTTP`, `segue.destination`, `segue.identifier`, `viewWillAppear()`, `viewDidAppear()`, `navigationController.popViewController()`, `DateFormatter().dateFormat`, `Date()`, `UITableViewCell`

Tips:
- Docker or any kinds of containerization tech like podman are very useful
- When code get larger, don't forget to organize and also don't postpone to organize and make comment
- ... 

---

TODO: - [10-cwcYoutubeApp](https://github.com/san-ghun/cwcYoutubeApp)
- Keep the demo app as non published project, and let's assume users have knowledge to input API_KEY and YouTube Video List ID for their own.
- Have to find out better and best way to handling secrets in app. [reference](https://nshipster.com/secrets/)
- Might be good idea to present an application introducing brand or channel with their Youtube video. 

Tags: `MVC`, `UIKit`, `Storyboard`, `View Life cycle`, `API`, `YouTube data API v3`, `Networking`, `JSON`, `CI/CD`, `Bitrise`, `Swift Package`, `YouTubeiOSPlayerHelper`, `Codable`, `URL(string:)`, `URLSession.shared`, `.dataTask()`, `JSONDecoder()`, `dataTask.resume()`, `UITableView`, `Custom TableViewCell`, `prepare(for segue: )`, `WebViews`, `Hugging priority in UIKit`, `DateFormatter()`, `Singleton`, `protocol`, `delegate`, `Delegate Protocol Pattern`, `JSONDecoder`, `dequeueReusableCell`, `DispatchQueue.main.async`, `JSONDecoder()`, `decoder.dateDecodingStrategy = .iso8601`, `dataTask.resume()`, `decoder.container()`, `container.decode()`, `container.nestedContainer()`, `git submodule`, `.gitmodules`

Tips:
- Use [NSDateFormatter.com](NSDateFormatter.com) to find proper DateFormatter easy.
- Remeber that modifying UI should be thrown to the Main thread, so use `DispatchQueue.main.` when you code some network work or any works that done in background thread.
- Everytime, consider that I am handling UI related job or not, so might have to use `DispatchQueue` in proper situation.
- When using `URLSession.dataTask()`, don't forget to start data task by `dataTask.resume()`.
- ...

---

TODO: - [11-DelegatesProtocols-tutorial]()
- .

Tags: `MVC`, `UIKit`, `Storyboard`, `View Life cycle`, `protocol`, `delegate`, `Delegate Protocol Pattern`, `UITapGestureRecognizer`, `ViewController.addGestureRecognizer()`, `storyboard?.instantiateViewController()`, `.modalPresentationStyle`, `present()`, `extension`

Tips:
- Be aware of the relation between ViewControllers with the Delegate Protocol Pattern, which usually called intern & boss relationship.
- ...

---
