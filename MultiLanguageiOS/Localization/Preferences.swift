import Foundation

class Preferences {
    
    private static let kCurrentLocale = "CurrentLocale"
    private static let kDefaultLocale = LangJA
    
    static let shared = Preferences()
    
    func currentLocale() -> String {
        if let locale = UserDefaults.standard.value(forKey: Preferences.kCurrentLocale) {
            return locale as! String
        }
        return Preferences.kDefaultLocale
    }
    
    func setCurrentLocale(_ locale: String) {
        UserDefaults.standard.set(locale, forKey: Preferences.kCurrentLocale)
        UserDefaults.standard.synchronize()
    }

}
