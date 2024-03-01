//
//  FeedImagePresenter.swift
//  EssentialFeediOS
//
//  Created by Haider Rizvi on 29/02/2024.
//

import Foundation
import EssentialFeed

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
