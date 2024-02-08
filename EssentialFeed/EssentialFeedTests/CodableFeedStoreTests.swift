//
//  CodableFeedStoreTests.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 08/02/2024.
//

import Foundation
import XCTest
import EssentialFeed

class CodeableFeedStore {

    func retrieve(completion: @escaping FeedStore.retrievalCompletion){
        completion(.empty)
    }

}

class CodableFeedStoreTests: XCTestCase  {

    func test_retrieve_deliversEmptyOnEmptyCache(){

        let sut = CodeableFeedStore()
        let exp = expectation(description: "wait for cache retrieval")

        sut.retrieve{ result in
            switch result {
            case .empty:
                break
            default:
                XCTFail("Expected empty result, got \(result) instead")
            }

            exp.fulfill()
        }

        wait(for: [exp], timeout: 1.0)
    }


}
