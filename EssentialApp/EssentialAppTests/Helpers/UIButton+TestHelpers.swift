//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Haider Rizvi on 29/02/2024.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
