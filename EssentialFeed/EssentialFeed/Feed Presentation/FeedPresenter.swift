//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 29/02/2024.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        NSLocalizedString("FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the feed view")
    }

}
