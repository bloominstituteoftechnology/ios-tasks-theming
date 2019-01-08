import UIKit

struct AppearanceHelper {
    
    // Set source of the main font
    static let mainTextFont = UIFont(name: "dotty", size: 25)
    
    // Scale size of text
    static func scaledMainTextFont(with textStyle: UIFont.TextStyle, size: CGFloat) -> UIFont {
        guard let font = mainTextFont else { fatalError() }
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}
