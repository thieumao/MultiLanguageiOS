//
//  TestViewController.swift
//  MultiLanguageiOS
//
//  Created by Nguyen Van Thieu B on 3/10/17.
//  Copyright © 2017 Thieu Mao. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var testButton: LocalizableButton!
    @IBOutlet weak var testLabel: LocalizableLabel!
    @IBOutlet weak var testTextField: LocalizableTextField!
    var currentLocale = Preferences.shared.currentLocale()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func jaClicked(_ sender: Any) {
        Preferences.shared.setCurrentLocale(LangJA)
        view.onUpdateLocale()
    }
    
    @IBAction func enClicked(_ sender: Any) {
        Preferences.shared.setCurrentLocale(LangEN)
        view.onUpdateLocale()
    }

}
