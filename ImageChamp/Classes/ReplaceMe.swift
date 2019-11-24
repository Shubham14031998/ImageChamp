

import Foundation
import UIKit

let iimageCache = NSCache<NSString, AnyObject>()

//MARK:Extension for Downlode Image Using URl Sessions
public extension UIImageView {
    
    //MARK:Func for downlode image
    func downlodeImage(serviceurl:String , placeHolder: UIImage?) {
        
        self.image = placeHolder
     //   let urlString = serviceurl
        guard let url = URL(string: serviceurl.replacingOccurrences(of:  " ", with: "%20")) else { return }
        
        //MARK:Check image Store in Cache or not
        if let cachedImage = iimageCache.object(forKey: serviceurl.replacingOccurrences(of: " ", with: "%20") as NSString) {
            if  let image = cachedImage as? UIImage {
                self.image = image
                print("Find image on Cache : For Key" , serviceurl.replacingOccurrences(of: " ", with: "%20"))
                return
            }
        }
        
        print("Conecting to Host with Url:-> \(url)")
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            
            if error != nil {
                print(error!)
                DispatchQueue.main.async {
                    self.image = placeHolder
                    return
                }
            }
            
            DispatchQueue.main.async {
                guard let photoData = data else {return}
                if let image = UIImage(data: photoData) {
                    self.image = image
                    iimageCache.setObject(image, forKey: serviceurl.replacingOccurrences(of: " ", with: "%20") as NSString)
                }
            }
        }).resume()
    }
}
