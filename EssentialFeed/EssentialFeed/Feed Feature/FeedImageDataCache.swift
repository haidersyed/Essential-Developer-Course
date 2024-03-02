//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 01/03/2024.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
