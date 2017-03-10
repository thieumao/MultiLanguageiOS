
import UIKit

class LocalizableTextField: UITextField {

    private var localizeKey: String?
    
    override public var placeholder:String?  {
        set (newValue) {
            self.localizeKey = newValue
            if let key = newValue {
                let localizedString = LocalizationHelper.shared.localized(key)
                super.placeholder = localizedString
            } else {
                super.placeholder = newValue
            }
        }
        get {
            return super.placeholder
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.localizeKey = self.placeholder
        self.placeholder = self.localizeKey
    }
    
    override func onUpdateLocale() {
        super.onUpdateLocale()
        self.placeholder = self.localizeKey
    }

}
