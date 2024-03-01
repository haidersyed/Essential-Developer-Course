//
//  FeedCacheTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Haider Rizvi on 08/02/2024.
//

import Foundation
import EssentialFeed

func uniqueImage() -> FeedImage {
    return FeedImage(id: UUID(), description: "any", location: "ay", url: anyURL())
}

func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]){
    let models  = [uniqueImage(), uniqueImage()];
    let local = models.map{LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url)}
    return (models, local)
}

extension Date {
    
    func minusFeedCacheMaxAge() -> Date {
        return adding(days: -feedCacheMaxAgeInDays)
    }
    
    private var feedCacheMaxAgeInDays: Int  {
        return 7
    }
    
}
