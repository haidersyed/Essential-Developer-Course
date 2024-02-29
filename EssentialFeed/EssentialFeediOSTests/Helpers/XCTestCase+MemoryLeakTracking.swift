//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeediOSTests
//
//  Created by Haider Rizvi on 29/02/2024.
//

import Foundation
import XCTest

extension XCTestCase {

    func trackForMemoryLeaks(_ instance: AnyObject,file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock {[weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}