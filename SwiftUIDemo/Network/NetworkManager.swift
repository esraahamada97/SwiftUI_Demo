//
//  NetworkManager.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation
import Moya

class NetworkManager {
    
    typealias MoyaCompletion = Result<Moya.Response, MoyaError>
    typealias NetworkCompletion<T: Codable> = (_ result: Swift.Result<T, NetworkError>,
        _ statusCode: Int?) -> Void
    
    static var networkConfig: NetworkDefaults {
        return NetworkManager.shared._networkConfig!
    }
    
    static var shared: NetworkManager!
    internal var _networkConfig: NetworkDefaults?
    

    
    var provider: MoyaProvider<MultiTarget>!
    
    
        init(config: NetworkDefaults) {
        self._networkConfig = config
     
        NetworkManager.shared = self
        
        let headerPlugin = StaticHeaderPlugin(
            headers: [
                "Accept": "*/*"
        ])
        
        
        provider = MoyaProvider<MultiTarget>(plugins: [NetworkLoggerPlugin(), headerPlugin])
    }
}

public struct StaticHeaderPlugin: PluginType {
    
    var headers: [String: String] = [:]
    
    public init(headers: [String: String]) {
        self.headers = headers
    }
    
    public func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        var request = request
        
        headers.forEach { (key, value) in
            request.addValue(value, forHTTPHeaderField: key)
        }
        
        return request
    }
}
