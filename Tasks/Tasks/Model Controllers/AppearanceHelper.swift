import UIKit

enum AppearanceHelper {
    
    static let neonGreen = UIColor(red: 50/255, green: 200/255, blue: 50/255, alpha: 1)
    
    static func setGreenAppearance() {
        
        UIBarButtonItem.appearance().tintColor = neonGreen
        
        let textAttributes: [NSAttributedString.Key: Any] = [ .foregroundColor: AppearanceHelper.neonGreen]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().tintColor = neonGreen
        
        UITextField.appearance().tintColor = neonGreen
        UITextView.appearance().tintColor = neonGreen
        UINavigationBar.appearance().tintColor = neonGreen
        //UINavigationController.allo = neonGreen
        
    }
    
    static func styleButton(_ button: UIButton) {
        button.backgroundColor = neonGreen
        
        button.layer.cornerRadius = 7
        
        button.setTitleColor(.purple, for: .normal)
        button.titleLabel?.font = godFatherFont(with: .callout, pointSize: 30)
    }
    
    static func godFatherFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        
        let font = UIFont(name: "The Godfather", size: pointSize)!
        
        let resizableFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
        return resizableFont
        
    }
    
//    func setTheme() {
//        guard let theme = themeHelper.themePreference else { return }
//
//        if theme == "Dark" {
//            collectionView.backgroundColor = .gray
//        } else {
//            collectionView.backgroundColor = .white
//        }
//    }
    
}
