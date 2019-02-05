import UIKit

class ThemeViewController: UIViewController {
    @IBAction func regThemePressed(_ sender: Any) {
        // set theme white
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func greenThemePressed(_ sender: Any) {
        // set theme green
        navigationController?.popViewController(animated: true)
    }
    
//
//    func updateTheme() {
//        AppearanceHelper.godFatherFont(with: greenThemePressed, pointSize: 30)
//    }


}
