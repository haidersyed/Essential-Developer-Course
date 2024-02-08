//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 04/02/2024.
//

import Foundation

public struct FeedImage: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageUrl: URL
    
    public init(id:UUID, description: String?, location: String?, imageUrl: URL){
        self.id = id
        self.description = description
        self.location = location
        self.imageUrl = imageUrl
    }
}
