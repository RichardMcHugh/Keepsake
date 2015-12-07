import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "http://kylegoslan.co.uk/name.json").response { request, response, data, error in
            
            if let data = data {
                
                let json = JSON(data: data)
                
                for thing in json.arrayValue {
                    print(thing["text"].stringValue)
                }
                
            }
            
        }
        
        
    }


}

