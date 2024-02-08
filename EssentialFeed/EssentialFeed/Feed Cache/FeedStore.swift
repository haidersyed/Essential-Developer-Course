//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 08/02/2024.
//

import Foundation

public protocol FeedStore {
    typealias deletionCompletion = (Error?) -> Void
    typealias insertionCompletion = (Error?) -> Void
    typealias retrievalCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping deletionCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping insertionCompletion)
    func retrieve(completion: @escaping retrievalCompletion)
}
