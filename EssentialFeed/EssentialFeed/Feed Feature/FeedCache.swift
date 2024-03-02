//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 01/03/2024.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
