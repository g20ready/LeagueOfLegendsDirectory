//
//  ChampionResponseDTO.swift
//  LeagueOfLegendsViewer
//
//  Created by Marsel Xhaxho on 23/10/2016.
//  Copyright © 2016 max@dev. All rights reserved.
//

import ObjectMapper

class ChampionResponseDTO: Mappable {
    
    var type: String?
    var format: String?
    var version: String?
    var data: [String:ChampionDTO]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        type        <- map["type"]
        format      <- map["format"]
        version     <- map["version"]
        data        <- map["data"]
    }
    
}
