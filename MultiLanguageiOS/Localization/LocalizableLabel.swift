import UIKit

class LocalizableLabel: UILabel {
    
    private var localizeKey: String?
    override public var text:String?  {
        set (newValue) {
            self.localizeKey = newValue
            if let key = newValue {
                let localizedString = LocalizationHelper.shared.localized(key)
                super.text = localizedString
            } else {
                super.text = newValue
            }
        }
        get {
            return super.text
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.localizeKey = self.text
        self.text = self.localizeKey
    }
    
    override func onUpdateLocale() {
        super.onUpdateLocale()
        self.text = self.localizeKey
    }

}
