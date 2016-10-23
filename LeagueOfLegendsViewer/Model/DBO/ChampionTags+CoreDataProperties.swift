//
//  ChampionTags+CoreDataProperties.swift
//  
//
//  Created by Marsel Xhaxho on 23/10/2016.
//
//

import Foundation
import CoreData

extension ChampionTags {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChampionTags> {
        return NSFetchRequest<ChampionTags>(entityName: "ChampionTags");
    }

    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var relationshipChampion: Champion?

}
