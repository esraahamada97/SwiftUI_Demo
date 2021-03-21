//
//  HomeWebService.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation

protocol HomeWebServiceProtocol: class {
    
    func getArticles(page: Int,
                          completion: @escaping(
        _ result: Swift.Result<NetworkResponse<[Article]>,
        NetworkError>,
        _ statusCode: Int?) -> Void)
    
}

class HomeWebService: HomeWebServiceProtocol {
    
    
    static let shared = HomeWebService()
    
    func getArticles(
        page: Int,
        completion: @escaping (Result<NetworkResponse<[Article]>, NetworkError>, Int?) -> Void) {
        
        NetworkManager.shared.fetch(
            endPoint: HomeService.getArticles(page: page)) { (result: Result<NetworkResponse<[Article]>, NetworkError>, statusCode) in
            switch result {
            case .success(let listData):
                
                completion(Result.success(listData), nil)
            case .failure(let error):
                print("error \(error)")
                
                completion(Result.failure(error), statusCode)
            }
        }
    }
    
}
