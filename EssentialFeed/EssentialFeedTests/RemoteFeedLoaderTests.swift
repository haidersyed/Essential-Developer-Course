//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 04/02/2024.
//

import XCTest

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests : XCTestCase {
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
         _ = RemoteFeedLoader()
        XCTAssertNil(client.requestedURL);
    }
}
