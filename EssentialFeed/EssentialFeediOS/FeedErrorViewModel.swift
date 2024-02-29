//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
