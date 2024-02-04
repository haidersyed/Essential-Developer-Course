//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Haider Rizvi on 04/02/2024.
//

import Foundation

public enum  HTTPClientResult {
    case success(Data,HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case  invalidData
    }
    
    public enum Result: Equatable {
        case success([FeedItem])
        case failure(Error)
    }
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url){ result in
            switch result {
            case let .success(data, responce):
                do {
                    let items = try FeedItemsMapper.map(data, responce)
                    completion(.success(items))
                } catch {
                    completion(.failure(.invalidData))
                }
                
            case.failure:
                completion(.failure(.connectivity))
            }
        }
    }
}

private class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [item]
    }
    
    private struct item: Decodable {
        public let id: UUID
        public let description: String?
        public let location: String?
        public let image: URL
        
        var item : FeedItem {
            return FeedItem(id: id, description: description, location: location, imageUrl: image)
        }
    }
    
    static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [FeedItem]{
        guard response.statusCode == 200 else {
            throw RemoteFeedLoader.Error.invalidData
        }
        let root = try JSONDecoder().decode(Root.self, from: data)
        return  root.items.map{$0.item}
    }
    
}
