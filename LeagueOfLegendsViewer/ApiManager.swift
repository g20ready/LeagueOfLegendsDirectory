//
//  ApiManager.swift
//  LeagueOfLegendsViewer
//
//  Created by Marsel Xhaxho on 22/10/2016.
//  Copyright © 2016 max@dev. All rights reserved.
//

import Alamofire
import SwiftyJSON
import ObjectMapper

class ApiManager {
    
    static let shared = ApiManager()
    
//    func fetchChampions( completion: @escaping ([ChampionDTO]?, Error?) -> () ) {
//        var champions: [ChampionDTO] = [ChampionDTO]()
//        Alamofire.request(Constants.LeagueOfLegends.URLs.championsUrl)
//            .responseJSON(completionHandler: { response in
//                switch response.result {
//                case .success(let value):
//                    let json = JSON(value)
//                    let data = json["data"]
//                    if data != nil {
//                        for (_, champion):(String, JSON) in data.dictionaryValue {
//                            if let championDTO = ChampionDTO(JSONString: champion.rawString()!) {
//                                champions.append(championDTO)
//                            }
//                            
//                        }
//                        completion(champions, nil)
//                    }else {
//                        completion(nil, data.error)
//                    }
//                case .failure(let error):
//                    completion(nil, error)
//                }
//                
//            })
//    }
    
    func fetchChampions( completion: @escaping ([ChampionDTO]?, Error?) -> () ) {
        Alamofire.request(Constants.LeagueOfLegends.URLs.championsUrl)
            .responseString(completionHandler: { response in
                switch response.result {
                case .success(let value):
                    let championsResponse = ChampionResponseDTO(JSONString: value)
                    let champions = championsResponse?.data?.map{ $1 };
                    completion(champions, nil)
                case .failure(let error):
                    completion(nil, error)
                }
                
            })
    }
    

}
