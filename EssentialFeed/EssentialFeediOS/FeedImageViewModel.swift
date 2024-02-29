//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
