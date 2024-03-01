//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
   public var hasLocation: Bool {
        return location != nil
    }
}
