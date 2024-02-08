//
//  LocalFeedLoader.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 08/02/2024.
//

import Foundation

public class LocalFeedLoader {

    private let store: FeedStore
    private let currentDate: () -> Date
    public init(store: FeedStore, currentDate: @escaping () -> Date) {
        self.store = store
        self.currentDate  = currentDate
    }

    public func save(_ items: [FeedItem], completion: @escaping (Error?) -> Void) {
        store.deleteCachedFeed {[weak self] error in
            guard let self = self else { return }
            if let cacheDeletionError = error {
                completion(cacheDeletionError)
            }
            else {
                self.cache(items, with: completion)
            }
        }
    }

    private func cache(_ items: [FeedItem], with completion: @escaping (Error?) -> Void) {
        self.store.insert(items, timestamp: currentDate()) { [weak self] error in
            guard self != nil else { return }

            completion(error)
        }
    }
}

public protocol FeedStore {
    typealias deletionCompletion = (Error?) -> Void
    typealias insertionCompletion = (Error?) -> Void

    func deleteCachedFeed(completion: @escaping deletionCompletion)
    func insert(_ items: [FeedItem], timestamp: Date, completion: @escaping insertionCompletion)
}
