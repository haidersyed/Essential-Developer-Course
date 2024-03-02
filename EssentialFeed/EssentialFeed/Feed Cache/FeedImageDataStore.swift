//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 01/03/2024.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
