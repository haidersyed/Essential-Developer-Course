//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 05/02/2024.
//


import Foundation
import XCTest
import EssentialFeed

class LocalFeedLoader {
    private let store: FeedStore
    init(store: FeedStore) {
        self.store = store
    }
    
    func save(_ items: [FeedItem]) {
        store.deleteCachedFeed()
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
    
    func deleteCachedFeed() {
        deleteCachedFeedCallCount += 1
    }
}

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteUponCreation() {
        let (_, store) = makeSUT()
        _ = LocalFeedLoader(store: store)
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
    
    func test_save_requestsCacheDeletion() {
        let items  = [uniqueItem(), uniqueItem()];
        let (sut, store) = makeSUT()
        
        sut.save(items);
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 1)
        
    }
    
    // Mark: - Helper
    
    private func makeSUT() -> (sut: LocalFeedLoader, store:FeedStore) {
        let store = FeedStore()
        let sut = LocalFeedLoader(store: store)
        return (sut, store)
    }
    
    private func uniqueItem() -> FeedItem {
        return FeedItem(id: UUID(), description: "any", location: "ay", imageUrl: anyURL())
    }
    
    private func anyURL() -> URL {
        return URL(string: "http://any-url.com")!
    }
    
}
