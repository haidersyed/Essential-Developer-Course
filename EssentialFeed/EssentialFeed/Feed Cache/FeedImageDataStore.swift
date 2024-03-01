//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 01/03/2024.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
