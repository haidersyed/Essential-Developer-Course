//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 08/02/2024.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
