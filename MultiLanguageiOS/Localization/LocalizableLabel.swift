import UIKit

class LocalizableLabel: UILabel {
    
    private var localizeKey: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        localizeKey = text
        text = localizeKey
    }
    
    override public var text: String?  {
        set (newValue) {
            localizeKey = newValue
            super.text = LocalizationHelper.shared.localized(localizeKey)
        }
        get {
            return super.text
        }
    }
    
    override func onUpdateLocale() {
        super.onUpdateLocale()
        text = localizeKey
    }

}
