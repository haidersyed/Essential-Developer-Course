//
//  ValidateFeedCacheUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 08/02/2024.
//

import Foundation
import XCTest
import EssentialFeed

class ValidateFeedCacheUseCaseTests: XCTestCase {

    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()
        XCTAssertEqual(store.receivedMessages, [])
    }

    func test_validateCache_deletesCacheOnRetrievalError() {
            let (sut,store) = makeSUT()

            sut.validateCache()

            store.completeRetrieval(with: anyNSError())

            XCTAssertEqual(store.receivedMessages, [.retrieve, .deleteCacheFeed])
        }

    // Mark: - Helper

    private func makeSUT(currentDate: @escaping () -> Date =  Date.init, file: StaticString = #filePath, line: UInt = #line) -> (sut: LocalFeedLoader, store:FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedLoader(store: store, currentDate: currentDate)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }
    
    private func anyNSError() -> NSError {
          return NSError(domain: "any error", code: 0)
      }


}
