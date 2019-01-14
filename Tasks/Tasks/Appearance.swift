import UIKit

enum Appearance {
    
    static func mainFont(pointSize: CGFloat) -> UIFont {
        let mainTextFont = UIFont(name: "Kwixter", size: pointSize)!
        return mainTextFont
    }
    
    static func subFont(pointSize: CGFloat) -> UIFont {
        let subTextFont = UIFont(name: "Barlow Condensed", size: pointSize)!
        return subTextFont
    }
    
   
}
