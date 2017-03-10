//
//  TestViewController.swift
//  MultiLanguageiOS
//
//  Created by Nguyen Van Thieu B on 3/10/17.
//  Copyright © 2017 Thieu Mao. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var testLabel: LocalizableLabel!
    var currentLocale = Preferences.shared.currentLocale()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if currentLocale.caseInsensitiveCompare(Preferences.shared.currentLocale()) != .orderedSame {
            onUpdateLocale()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func jaClicked(_ sender: Any) {
        Preferences.shared.setCurrentLocale(LangJA)
        testLabel.text = LocalizationHelper.shared.localized("CHANGE_LANGUAGE")
    }
    
    @IBAction func enClicked(_ sender: Any) {
        Preferences.shared.setCurrentLocale(LangEN)
        testLabel.text = LocalizationHelper.shared.localized("CHANGE_LANGUAGE")
    }
    
    func onUpdateLocale() {
    }
    
}
