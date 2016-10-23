//
//  Champion+CoreDataProperties.swift
//  
//
//  Created by Marsel Xhaxho on 23/10/2016.
//
//

import Foundation
import CoreData

extension Champion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Champion> {
        return NSFetchRequest<Champion>(entityName: "Champion");
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var blurb: String?
    @NSManaged public var title: String?
    @NSManaged public var version: String?
    @NSManaged public var key: String?
    @NSManaged public var relationshipChampionTags: ChampionTags?
    @NSManaged public var relationshipChampionStats: ChampionStats?

}
