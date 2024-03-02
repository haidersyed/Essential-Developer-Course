//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
