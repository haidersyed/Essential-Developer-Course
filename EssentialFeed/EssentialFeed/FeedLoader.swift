//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 04/02/2024.
//

import Foundation

enum LoadFeedResult  {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
