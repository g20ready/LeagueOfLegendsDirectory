//
//  ChampionStats+CoreDataProperties.swift
//  
//
//  Created by Marsel Xhaxho on 23/10/2016.
//
//

import Foundation
import CoreData

extension ChampionStats {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChampionStats> {
        return NSFetchRequest<ChampionStats>(entityName: "ChampionStats");
    }

    @NSManaged public var hp: Double
    @NSManaged public var hpPerLevel: Double
    @NSManaged public var mp: Double
    @NSManaged public var mpPerLevel: Double
    @NSManaged public var moveSpeed: Double
    @NSManaged public var armor: Double
    @NSManaged public var armorPerLevel: Double
    @NSManaged public var spellBlock: Double
    @NSManaged public var spellBlockPerLevel: Double
    @NSManaged public var attackDamage: Double
    @NSManaged public var attackRange: Double
    @NSManaged public var hpRegen: Double
    @NSManaged public var hpRegenPerLevel: Double
    @NSManaged public var mpRegen: Double
    @NSManaged public var mpRegenPerLevel: Double
    @NSManaged public var crit: Double
    @NSManaged public var critPerLevel: Double
    @NSManaged public var attackDamagePerLevel: Double
    @NSManaged public var attackSpeedOffset: Double
    @NSManaged public var attackSpeedPerLevel: Double
    @NSManaged public var relationshipChampion: Champion?

}
