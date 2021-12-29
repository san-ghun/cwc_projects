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
- ...

Tags: `CoreData`, 

Tips:
- Be causious to specify the coverage of CoreData entity and class by `Module` field
- Consider which Codegen menu to use using CoreData Class 

---
