//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 04/02/2024.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
