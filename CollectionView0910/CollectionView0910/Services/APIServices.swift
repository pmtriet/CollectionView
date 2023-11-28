//
//  APIServices.swift
//  CollectionView0910
//
//  Created by Minh Triet Pham on 28/11/2023.
//

import Foundation
import Alamofire

class APIServices {
    static let shared = APIServices()
    static let baseURL = "https://api.mobygames.com/v1/games?api_key=moby_8BhL8vYmC9v0PoamriU8vCw0MZ2"
    
    func fetchItems(completion: @escaping ([Games]?, Error?) -> Void) {
        AF.request(APIServices.baseURL).responseJSON { response in
                if let error = response.error {
                    completion(nil, error)
                    return
                }
                
                if let data = response.data {
                    do {
                        let items = try JSONDecoder().decode([Games].self, from: data)
                        completion(items, nil)
                    } catch {
                        completion(nil, error)
                    }
                }
            }
        }
    
}
