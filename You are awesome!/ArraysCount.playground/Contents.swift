//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}

var classmates = ["Lucas", "Pat", "Will", "Conner"]

if classmates.count == 0{
    print("The array is empty")
}else {
    print(classmates.last)
}

var bradyBunch = [String]()
var mikesKids = ["Greg", "Peter", "Bobby"]
var carolsKids = ["Marcia", "Jan", "Cindy" ]



bradyBunch.append(contentsOf: mikesKids)
bradyBunch.append(contentsOf: carolsKids)

print(bradyBunch)

bradyBunch.insert("Cousin Oliver", at: 3)
print(bradyBunch)
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
