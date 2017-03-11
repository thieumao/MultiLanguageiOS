//
//  UIView+Extensions.swift
//  MultiLanguageiOS
//
//  Created by Thieu Mao on 3/11/17.
//  Copyright © 2017 Thieu Mao. All rights reserved.
//

import UIKit

extension UIView {
    func onUpdateLocale() {
        for subView: UIView in self.subviews {
            subView.onUpdateLocale()
        }
    }
}
