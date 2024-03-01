//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Haider Rizvi on 02/03/2024.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
