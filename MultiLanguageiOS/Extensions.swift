//
//  Extensions.swift
//  cfn
//
//  Created by Nguyen Hung on 11/14/16.
//  Copyright © 2016 Le Thi Van Anh. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func onUpdateLocale() {
        for subView: UIView in self.subviews {
            subView.onUpdateLocale()
        }
    }

}

