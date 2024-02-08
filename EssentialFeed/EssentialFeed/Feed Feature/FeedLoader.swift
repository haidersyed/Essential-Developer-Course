//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 04/02/2024.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
