//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 05/02/2024.
//

import Foundation
import XCTest

class LocalFeedLoader {

    init(store: FeedStore) {

    }

}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
