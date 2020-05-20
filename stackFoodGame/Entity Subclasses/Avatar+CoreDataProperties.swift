//
//  Avatar+CoreDataProperties.swift
//  stackFoodGame
//
//  Created by Test on 5/20/20.
//  Copyright © 2020 Michael Hayes. All rights reserved.
//
//

import UIKit
import CoreData


extension Avatar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Avatar> {
        return NSFetchRequest<Avatar>(entityName: "Avatar")
    }

    @NSManaged public var iconName: String?
    @NSManaged public var id: Int16
    @NSManaged public var name: String?
    @NSManaged public var gameHistory: NSSet?
    @NSManaged public var player: NSSet?

}

// MARK: Generated accessors for gameHistory
extension Avatar {

    @objc(addGameHistoryObject:)
    @NSManaged public func addToGameHistory(_ value: GameHistory)

    @objc(removeGameHistoryObject:)
    @NSManaged public func removeFromGameHistory(_ value: GameHistory)

    @objc(addGameHistory:)
    @NSManaged public func addToGameHistory(_ values: NSSet)

    @objc(removeGameHistory:)
    @NSManaged public func removeFromGameHistory(_ values: NSSet)

}

// MARK: Generated accessors for player
extension Avatar {

    @objc(addPlayerObject:)
    @NSManaged public func addToPlayer(_ value: Player)

    @objc(removePlayerObject:)
    @NSManaged public func removeFromPlayer(_ value: Player)

    @objc(addPlayer:)
    @NSManaged public func addToPlayer(_ values: NSSet)

    @objc(removePlayer:)
    @NSManaged public func removeFromPlayer(_ values: NSSet)

}
