//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
