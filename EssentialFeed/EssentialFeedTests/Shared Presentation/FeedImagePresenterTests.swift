//
//  LoadResourcePresenterTests.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 02/03/2024.
//

import XCTest
import EssentialFeed
import EssentialFeediOS

class FeedImagePresenterTests: XCTestCase {
    
    func test_map_createsViewModel() {
        let image = uniqueImage()
        
        let viewModel = FeedImagePresenter.map(image)
        
        XCTAssertEqual(viewModel.description, image.description)
        XCTAssertEqual(viewModel.location, image.location)
    }

}
