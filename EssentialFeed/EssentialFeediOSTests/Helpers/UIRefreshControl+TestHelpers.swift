//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Haider Rizvi on 29/02/2024.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
