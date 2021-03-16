//
//  HomeViewModel.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation
class HomeViewModel: ObservableObject {
        @Published var articles = [CardData]()
        
        let homeService: HomeWebServiceProtocol
        
        init(service: HomeWebServiceProtocol = HomeWebService.shared) {
            self.homeService = service
        }
        
    
        func getArticles() {
            homeService.getArticles(page: 1) { ( result: Result<NetworkResponse<[CardData]>, NetworkError>, _) in
                switch result {
                case .success(let listData):
                    self.articles = listData.articles ?? []
                    
                case .failure(let error):
                    print("error \(error)")
                }
            }
        }
    }
