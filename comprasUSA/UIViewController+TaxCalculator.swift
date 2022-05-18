//
//  UIViewController+TaxCalculator.swift
//  comprasUSA
//
//  Created by Herrison Feres on 18/05/22.
//

import Foundation
import UIKit

extension UIViewController {
    var tc: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
