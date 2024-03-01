//
//  FeedViewControllerTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Haider Rizvi on 29/02/2024.
//

import Foundation
import XCTest
import EssentialFeediOS

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
          func display(_ viewModel: Any) {}
      }

      var loadError: String {
          LoadResourcePresenter<Any, DummyView>.loadError
      }

      var feedTitle: String {
          FeedPresenter.title
      }
}
