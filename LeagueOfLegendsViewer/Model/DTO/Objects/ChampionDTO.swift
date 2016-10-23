//
//  ChampionDTO.swift
//  LeagueOfLegendsViewer
//
//  Created by Marsel Xhaxho on 22/10/2016.
//  Copyright © 2016 max@dev. All rights reserved.
//

import ObjectMapper

class ChampionDTO: Mappable {

    var version: String?
    var id: String?
    var key: String?
    var name: String?
    var title: String?
    var blurb: String?
    
    //MARK: Mappable
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        version     <- map["version"]
        id          <- map["id"]
        key         <- map["key"]
        name        <- map["name"]
        title       <- map["title"]
        blurb       <- map["blurb"]
    }
    
}
