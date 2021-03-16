//
//  HomeService.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation
import Moya

// swiftlint:disable all
enum HomeService {
    case getArticles(page: Int)
}

extension HomeService: TargetType {
    
    var baseURL: URL {
        return URL(string: NetworkManager.networkConfig.baseUrl)!
    }
    
    var path: String {
        
        switch self {
        case .getArticles:
            return "/everything"
            
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getArticles:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        
        switch self {
        case .getArticles(let page):
            return .requestParameters(parameters: [
                                        "q": "egypt",
                                        "from": "2021-02-20",
                "api_key": NetworkManager.shared._networkConfig?.apiKey ?? "",
                "pageSize": 10,
                "page": page], encoding: URLEncoding.default)
            
    
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
