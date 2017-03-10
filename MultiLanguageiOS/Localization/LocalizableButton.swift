import UIKit

class LocalizableButton: UIButton {
    
    private var localizeKey: String?
    
    override func setTitle(_ title: String?, for state: UIControlState) {
        if let key = title {
            self.localizeKey = key
            let localizedString = LocalizationHelper.shared.localized(key)
            super.setTitle(localizedString, for: state)
        } else {
            super.setTitle(title, for: state)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.localizeKey = self.currentTitle
        self.setTitle(self.localizeKey, for: .normal)
    }

    override func onUpdateLocale() {
        super.onUpdateLocale()
        self.setTitle(self.localizeKey, for: .normal)
    }
    
}
