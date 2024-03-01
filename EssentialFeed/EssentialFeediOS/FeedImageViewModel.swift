//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
   public var hasLocation: Bool {
        return location != nil
    }
}
